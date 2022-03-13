/**
* Copyright 2022 by the authors (see AUTHORS).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL license under French law and
* abiding by the rules of distribution of free software.  You can  use,
* modify and/ or redistribute the software under the terms of the CeCILL
* license as circulated by CEA, CNRS and INRIA at the following URL
* "http://www.cecill.info".
*
* As a counterpart to the access to the source code and  rights to copy,
* modify and redistribute granted by the license, users are provided only
* with a limited warranty  and the software's author,  the holder of the
* economic rights,  and the successive licensors  have only  limited
* liability.
*
* In this respect, the user's attention is drawn to the risks associated
* with loading,  using,  modifying and/or developing or reproducing the
* software by the user in light of its specific status of free software,
* that may mean  that it is complicated to manipulate,  and  that  also
* therefore means  that it is reserved for developers  and  experienced
* professionals having in-depth computer knowledge. Users are therefore
* encouraged to load and test the software's suitability as regards their
* requirements in conditions enabling the security of their systems and/or
* data to be ensured and,  more generally, to use and operate it in the
* same conditions as regards security.
*
* The fact that you are presently reading this means that you have had
* knowledge of the CeCILL license and that you accept its terms.
**/
/***************/
/*  loader.go  */
/***************/
/**
 * This file loads all the plugins in the given folder.
 **/

package plugin

import (
	"flag"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"plugin"
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"gopkg.in/yaml.v2"
)

/* Flags and Yaml structs */

/**
 * Parses an option
 **/
type Option struct {
	Name  string `yaml:"name"`
	Value string `yaml:"default"`
}

/**
 * Gets the name of the plugin & the options associated.
 **/
type PluginConfig struct {
	Name          string   `yaml:"name"`
	DefaultEnable bool     `yaml:"defaultEnable"`
	Options       []Option `yaml:"options"`
}

type PoptionsFlags []string

/* Overloading flags functions */

func (opt *PoptionsFlags) String() string {
	repr := "["
	for i, s := range *opt {
		repr += s
		if i != len(*opt)-1 {
			repr += ", "
		}
	}
	return repr + "]"
}

func (opt *PoptionsFlags) Set(value string) error {
	*opt = append(*opt, value)
	return nil
}

/* Loader logic below */

var pluginManager *PluginManager
var flag_load = flag.String("load", "", "Plugins to load. Each plugin have to be separated by a comma, without white space.")
var flag_preventLoad = flag.String("preventLoad", "", "Prevents the automatic loading of a plugin with its name.")
var PoptionFlag PoptionsFlags
var loadedPlugins map[string]bool

/**
 * Loads all the plugins file from the "plugins/" folder at the root of the application executable.
 **/
func loadPlugins(path string) *PluginManager {
	pm := makeManager()
	loadedPlugins = make(map[string]bool)

	realpath, err := os.Executable()

	if err != nil {
		return pm
	}

	err = loadPluginsAux(filepath.Dir(realpath)+"/"+path, pm)
	if err != nil {
		fmt.Println(err)
	}

	return pm
}

/**
 * Loads all the plugins in a folder and its subfolders.
 * Can launch different errors.
 **/
func loadPluginsAux(path string, pm *PluginManager) error {
	files, err := ioutil.ReadDir(path)
	if err != nil {
		return fmt.Errorf("[PLUGINS] %s couldn't be opened", path)
	}

	lib, cfg := getPluginFiles(files)
	if isPlugin(lib, cfg) {
		// Get the .so & .yaml
		lib, cfg = getPluginFiles(files)
		cfgPath := filepath.Join(path, cfg)
		config, err := parseCfgFile(cfgPath)

		if err != nil {
			return err
		}

		// If the user asked to load this plugin, actually loads the file with the options
		if (config.DefaultEnable && !inNameList(config.Name, *flag_preventLoad)) ||
			inNameList(config.Name, *flag_load) {
			loadFile(pm, filepath.Join(path, lib), config)
		}
	}

	for _, file := range files {
		if file.IsDir() {
			if err := loadPluginsAux(filepath.Join(path, file.Name()), pm); err != nil {
				return err
			}
		}
	}

	return nil
}

func inNameList(name string, list string) bool {
	return strings.Contains(list, ","+name) || strings.Contains(list, name+",") || list == name
}

/**
 * Returns true if the directory contains a plugin (.so) and a yaml configuration
 * file associated to the plugin.
 **/
func isPlugin(lib string, cfg string) bool {
	return len(lib) > 0 && len(cfg) > 0
}

/**
 * Gets the .so and .yaml files for a plugin configuration.
 **/
func getPluginFiles(files []os.FileInfo) (string, string) {
	lib, cfg := "", ""
	for _, file := range files {
		if !file.IsDir() {
			if strings.Contains(file.Name(), ".so") {
				lib = file.Name()
			} else if strings.Contains(file.Name(), ".yaml") {
				cfg = file.Name()
			}
		}
	}
	return lib, cfg
}

/**
 * Parses the configuration file, gets the name of the plugin, and properly
 * setups the options (with default value, replaces it if it finds the option
 * listed in -poptions name:...
 **/
func parseCfgFile(yamlPath string) (PluginConfig, error) {
	// Read file content
	yamlFile, err := os.Open(yamlPath)

	if err != nil {
		return PluginConfig{}, fmt.Errorf("[PLUGINS] %s couldn't be opened", yamlPath)
	}

	data, err := ioutil.ReadAll(yamlFile)

	if err != nil {
		return PluginConfig{}, fmt.Errorf("[PLUGINS] %s couldn't be read", yamlPath)
	}

	var config PluginConfig
	err = yaml.Unmarshal([]byte(data), &config)
	if err != nil {
		return PluginConfig{}, fmt.Errorf("[PLUGINS] Configuration file error : %s", yamlPath)
	}

	err = overwriteOptions(&config)
	if err != nil {
		return PluginConfig{}, err
	}

	return config, nil
}

/**
 * Writes poptions setting into the associated plugin config.
 **/
func overwriteOptions(config *PluginConfig) error {
	// Get the options in -poptions associated with config.Name
	options := getOptionsOf(config.Name)
	if len(options) == 0 {
		return nil
	}

	// Split each option
	for _, opt := range strings.Split(options, ",") {
		// Parse each option individually
		nameAndValue := strings.Split(opt, "=")
		if len(nameAndValue) != 2 {
			// Put an empty value, plugins should manage it themselves.
			nameAndValue = append(nameAndValue, "")
		}

		found := false
		for i, conf := range config.Options {
			if conf.Name == nameAndValue[0] {
				found = true
				config.Options[i].Value = nameAndValue[1]
			}
		}

		if !found {
			return fmt.Errorf("[PLUGINS] Plugin option name not found: %s", nameAndValue[0])
		}
	}

	return nil
}

/**
 * Returns the string corresponding to the options of the plugin specified by `plugin`
 **/
func getOptionsOf(plugin string) string {
	for _, opt := range PoptionFlag {
		nameAndOptions := strings.Split(opt, ":")
		if nameAndOptions[0] == plugin {
			return nameAndOptions[1]
		}
	}
	return ""
}

/**
 * Loads a plugin with its init function and gives it its options.
 **/
func loadFile(pm *PluginManager, fullpath string, config PluginConfig) error {
	p, err := plugin.Open(fullpath)

	if err != nil {
		return fmt.Errorf("[PLUGINS] %s couldn't be opened", fullpath)
	}

	ifunc, err := p.Lookup("InitPlugin")

	if err != nil {
		return fmt.Errorf("[PLUGINS] Init function not found in %s. Plugin hasn't been loaded", fullpath)
	}

	initFunc := ifunc.(func(*PluginManager, []Option, bool) error)
	if err := initFunc(pm, config.Options, global.GetDebug()); err != nil {
		return fmt.Errorf("[PLUGINS] Init function error in %s. Plugin hasn't been loaded", fullpath)
	}
	fmt.Println("[PLUGINS]", config.Name, "has been successfully loaded.")
	loadedPlugins[config.Name] = true

	return nil
}

func GetPluginManager() *PluginManager {
	if pluginManager == nil {
		pluginManager = loadPlugins("plugins")
	}
	return pluginManager
}

func IsLoaded(name string) bool {
	if b, found := loadedPlugins[name]; found {
		return b
	} else {
		loadedPlugins[name] = false
	}
	return false
}
