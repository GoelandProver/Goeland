# Goéland - External scripts

External scripts are here to provide some useful functionalities to the Goéland's environment. 

## License

Goéland is licensed under the CeCILL 2.1 License. See [LICENSE](../LICENSE).

## Requirements

Scripts needs Python 3 to being executed.

## Usage

### add_include.py

This script replace all the include if the files inside a TPTP repository by the corresponding axioms. Axiom directory needs to be at the same level than problems directory, i.e. project hierarchy needs to be as follow : 

```
.
├── Axioms
├── problems_repository
```
Then run the following command :

```console
$ python3 add_include.py DIRECTORY
```

## update_license.py

This script replace the header of the license in each file by the one in the `update_license.py` file.

```console
$ python3 update_license.py DIRECTORY
```
