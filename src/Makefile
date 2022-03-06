# Sources
GOSRC=main.go
PLUGINS_SRC=plugins/
YACCFILE=./types/complex-types/tptp_6.3.0.y
GOPARSER=$(YACCFILE:.y=.go)

# Compilation
BUILD=_build/
GOYACC=goyacc
GOYACCFLAGS=-l
GOC=go build
GOFLAGS=-gcflags=-m
BIN=_build/goeland
PREFIX=TPTP

# Parse files
PROB=../../problems/SYN

# Plugins
PLUGINS=dmt

all: $(PLUGINS)
	$(GOYACC) $(GOYACCFLAGS) -p $(PREFIX) -o $(GOPARSER) $(YACCFILE); \
	$(GOC) $(GOFLAGS) -o $(BIN) $(GOSRC) 2>/dev/null
	@for dir in `ls $(PLUGINS_SRC)`; do \
		`cp $(PLUGINS_SRC)/$$dir/plugin.yaml $(BUILD)plugins/$$dir/plugin.yaml`; done

dmt:
	$(GOC) $(GOFLAGS) -buildmode=plugin -o $(BUILD)plugins/dmt/dmt.so $(PLUGINS_SRC)dmt/*.go 2>/dev/null
	
parse:
	@for i in `ls $(PROB)/*.p`; do echo -e "File \033[32m$$i\033[39m: "; \
        ./$(BIN) $$i; echo; done

clean:
	rm -f *~ $(GOPARSER) y.output  
	rm -rf $(BUILD)
