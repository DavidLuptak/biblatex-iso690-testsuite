PATTERN=pattern
OUTPUT=output
TEX=pdflatex

.PHONY: all output pattern makediff clean implode

all:
	$(MAKE) implode
	$(MAKE) pattern
	$(MAKE) output
	$(MAKE) clean
	$(MAKE) makediff

output: $(OUTPUT).pdf
pattern: $(PATTERN).pdf

$(PATTERN).pdf:
	$(TEX) $(PATTERN).tex
	$(TEX) $(PATTERN).tex

${OUTPUT}.pdf:
	$(TEX) $(OUTPUT).tex
	biber $(OUTPUT).bcf
	$(TEX) $(OUTPUT).tex

makediff:
	diffpdf $(PATTERN).pdf $(OUTPUT).pdf &

clean:
	-rm *.aux *.bbl *.blg *.bcf *.run.xml *.out *.log

implode: clean
	-rm $(OUTPUT).pdf $(PATTERN).pdf
