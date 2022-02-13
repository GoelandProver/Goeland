from cgi import print_form
import os
import sys
import re

# + Makefile + yacc

if len(sys.argv) != 2: 
    print("python3 update_license folder")
else:
    license = '''Copyright 2022 by the authors (see AUTHORs).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
* knowledge of the CeCILL license and that you accept its terms.'''

    folder = sys.argv[1]

    for parent, dirnames, filenames in os.walk(folder): 
        print(filenames)
        for fn in filenames:
            if fn.split(".")[-1].lower() == "go":
                with open(os.path.join(parent, fn), 'r+') as f:
                    content = f.read()
                    # If the file already contains a license, replace it
                    if re.search(r"Copyright(.|\n)*license and that you accept its terms\.", content):
                        print("License already found, let's replace it!")
                        f.close()
                        f = open(os.path.join(parent, fn), 'w').close()
                        f = open(os.path.join(parent, fn), 'r+')
                        f.write(re.sub(r"Copyright(.|\n)*license and that you accept its terms\.", license, content))
                    # Else, add it
                    else:
                        print("No license here, let's add it!")
                        f.seek(0, 0)
                        f.write("/**\n* "+license + '\n**/\n' + content)
            else:
                print("Not a .go file")