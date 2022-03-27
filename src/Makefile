# Sources
GOSRC=main.go
PLUGINS_SRC=plugins/
YACCFILE=./parser/tptp_6.3.0.y
GOPARSER=$(YACCFILE:.y=.go)

# Compilation
BUILD=_build/
GOYACC=goyacc
GOYACCFLAGS=-l
GOC=go build
GOFLAGS=
BIN=_build/goeland
PREFIX=TPTP
RELEASE=
SHUTUP=
ifdef RELEASE
	SHUTUP=2>/dev/null 
	GOFLAGS=-gcflags=-m
endif

# Parse files
PROB=../../problems/SYN

all: 
	$(GOYACC) $(GOYACCFLAGS) -p $(PREFIX) -o $(GOPARSER) $(YACCFILE); \
	$(GOC) $(GOFLAGS) -o $(BIN) $(GOSRC) 

static-linux-release:
	$(GOYACC) $(GOYACCFLAGS) -p $(PREFIX) -o $(GOPARSER) $(YACCFILE); \
	GOOS=linux GOARCH=amd64 $(GOC) -tags osusergo,netgo -ldflags="-extldflags=-static" -o $(BIN)_linux_release $(GOSRC)
	
parse:
	@for i in `ls $(PROB)/*.p`; do echo -e "File \033[32m$$i\033[39m: "; \
        ./$(BIN) $$i; echo; done

clean:
	rm -f *~ $(GOPARSER) y.output  
	rm -rf $(BUILD)

tests:
	go test -v -coverprofile=coverage.out ./... || (go tool cover -html=coverage.out && rm coverage.out)