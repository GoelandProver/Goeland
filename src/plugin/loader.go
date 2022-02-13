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
)

var pluginManager *PluginManager
var canLoadPlugins = flag.Bool("loadPlugins", true, "Load plugins")

/**
 * Loads all the plugins file from the "plugins/" folder at the root of the application executable.
 **/
func loadPlugins(path string) *PluginManager {
	pm := makeManager()

	realpath, err := os.Executable()
	
	if err != nil {
		return pm
	}

	err = loadPluginsAux(filepath.Dir(realpath) + "/" + path, pm)
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

	for _, file := range files {
		fullpath := filepath.Join(path, file.Name())
		if file.IsDir() {
			if err := loadPluginsAux(fullpath, pm); err != nil {
				return err
			}
		} else {
			p, err := plugin.Open(fullpath)

			if err != nil {
				return fmt.Errorf("[PLUGINS] %s couldn't be opened", fullpath)
			}

			ifunc, err := p.Lookup("InitPlugin")

			if err != nil {
				return fmt.Errorf("[PLUGINS] Init function not found in %s. Plugin hasn't been loaded", fullpath)
			}

			initFunc := ifunc.(func(*PluginManager) error)
			if err := initFunc(pm); err != nil {
				return fmt.Errorf("[PLUGINS] Init function error in %s. Plugin hasn't been loaded", fullpath)
			}
			fmt.Println("[PLUGINS]", filepath.Base(fullpath), "has been successfully loaded.")
		}
	}

	return nil
}

func GetPluginManager() *PluginManager {
	if !*canLoadPlugins {
		pluginManager = makeManager()
	} else if pluginManager == nil {
		pluginManager = loadPlugins("plugins")
	}
	return pluginManager
}