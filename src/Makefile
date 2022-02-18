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
		go build -buildmode=plugin -o $(BUILD)/plugins/$$dir/$$dir.so `ls $(PLUGINS_SRC)/$$dir/*.go`; \
		`cp $(PLUGINS_SRC)/$$dir/plugin.yaml $(BUILD)/plugins/$$dir/plugin.yaml`; done

parse:
	@for i in `ls $(PROB)/*.p`; do echo -e "File \033[32m$$i\033[39m: "; \
        ./$(GOEXE) $$i; echo; done

clean:
	rm -f *~ $(GOPARSER) y.output $(GOEXE) 
	rm -rf $(BUILD)
