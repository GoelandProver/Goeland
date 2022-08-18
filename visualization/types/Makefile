LATEX=latexmk
LFLAGS=-shell-escape -xelatex -output-directory=build
TEX=proof.tex
PDF=$(TEX:.tex=.pdf)
DIRG=@mkdir -p $(@D)

all: $(PDF)

$(PDF): $(TEX) $(wildcard *.tex) $(wildcard *.bib)
	$(DIRG)
	$(LATEX) $(LFLAGS) $(TEX)

clean:
	@mv build/$(PDF) .
	@rm -rf build 
	@rm $(TEX)

.PHONY: $(PDF)