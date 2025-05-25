# Sources
GOSRC=main.go options.go
PLUGINS_SRC=plugins/
YACCFILE=./Parser/tptp_parse.y
GOPARSER=$(YACCFILE:.y=.go)

# Compilation
BUILD=_build/
GOYACC=goyacc
GOYACCFLAGS=-l
GOC=go build
GOW=gow -e=go -e=y build
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
TMPFILE=/tmp/GOELAND_TESTS_OK

all: build

parser:
	$(GOYACC) $(GOYACCFLAGS) -p $(PREFIX) -o $(GOPARSER) $(YACCFILE)

build: parser
	$(GOC) $(GOFLAGS) -o $(BIN) $(GOSRC)

watch: parser
	$(GOW) $(GOFLAGS) -o $(BIN) $(GOSRC)

static-linux-release:
	$(GOYACC) $(GOYACCFLAGS) -p $(PREFIX) -o $(GOPARSER) $(YACCFILE); \
	GOOS=linux GOARCH=amd64 $(GOC) -tags osusergo,netgo -ldflags="-extldflags=-static" -o $(BIN)_linux_release $(GOSRC)

parse:
	@for i in `ls $(PROB)/*.p`; do echo -e "File \033[32m$$i\033[39m: "; \
        ./$(BIN) $$i; echo; done

clean:
	rm -f **/*~ $(GOPARSER) y.output
	rm -rf $(BUILD)

.PHONY: tests
tests:
	go test -v -coverprofile=coverage.out ./... && touch $(TMPFILE) || /bin/true
	go tool cover -html=coverage.out -o _build/coverage.html && rm coverage.out
	if [ -f $(TMPFILE) ]; then \
		rm -f $(TMPFILE); \
		exit 0; \
	else \
		exit 1; \
	fi
