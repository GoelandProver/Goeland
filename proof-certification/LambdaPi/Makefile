.POSIX:
SRC = CCC.lp FOL.lp GS3.lp ICC.lp LL.lp LL_ND.lp ND_eps_aux.lp ND_eps_full.lp ND_eps.lp ND.lp
OBJ = $(SRC:.lp=.lpo)
.SUFFIXES:

all: $(OBJ)

install: $(OBJ) lambdapi.pkg
	lambdapi install lambdapi.pkg $(OBJ) $(SRC)

uninstall:
	lambdapi uninstall lambdapi.pkg

clean:
	rm -f $(OBJ)

.SUFFIXES: .lp .lpo

.lp.lpo:
	lambdapi check --gen-obj $<
