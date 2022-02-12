# $Id$
#
# Copyright by Julie CAILLER and Johann ROSAIN (2022)
#
# julie.cailler@lirmm.fr
# johann.rosain@lirmm.fr
#
# Goéland is an automated theorem prover for first order logic.
#
# This software is governed by the CeCILL-B license under French law and
# abiding by the rules of distribution of free software.  You can  use, 
# modify and/ or redistribute the software under the terms of the CeCILL-B
# license as circulated by CEA, CNRS and INRIA at the following URL
# "http://www.cecill.info". 
#
# As a counterpart to the access to the source code and  rights to copy,
# modify and redistribute granted by the license, users are provided only
# with a limited warranty  and the software's author,  the holder of the
# economic rights,  and the successive licensors  have only  limited
# liability. 
#
# In this respect, the user's attention is drawn to the risks associated
# with loading,  using,  modifying and/or developing or reproducing the
# software by the user in light of its specific status of free software,
# that may mean  that it is complicated to manipulate,  and  that  also
# therefore means  that it is reserved for developers  and  experienced
# professionals having in-depth computer knowledge. Users are therefore
# encouraged to load and test the software's suitability as regards their
# requirements in conditions enabling the security of their systems and/or 
# data to be ensured and,  more generally, to use and operate it in the 
# same conditions as regards security. 
#
# The fact that you are presently reading this means that you have had
# knowledge of the CeCILL-B license and that you accept its terms.
#
BUILD=_build/
PLUGINS_SRC=plugins/
SHELL:=/bin/bash
GOYACC=goyacc
GOC=go build
GOYACCFLAGS=-l
YACCFILE=./types/complex-types/tptp_6.3.0.y
PREFIX=TPTP
GOPARSER=$(YACCFILE:.y=.go)
GOEXE=$(BUILD)goeland
PROB=../../problems/SYN

build:
	$(GOYACC) $(GOYACCFLAGS) -p $(PREFIX) -o $(GOPARSER) $(YACCFILE); \
	$(GOC) -o $(GOEXE) *.go
	@for dir in `ls $(PLUGINS_SRC)`; do \
		go build -buildmode=plugin -o $(BUILD)/plugins/$$dir/$$dir.so `ls $(PLUGINS_SRC)/$$dir/*.go`; done

parse:
	@for i in `ls $(PROB)/*.p`; do echo -e "File \033[32m$$i\033[39m: "; \
        ./$(GOEXE) $$i; echo; done

clean:
	rm -f *~ $(GOPARSER) y.output $(GOEXE) 
	rm -rf $(BUILD)
