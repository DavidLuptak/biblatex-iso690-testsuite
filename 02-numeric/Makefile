PATTERN=pattern
OUTPUT=output
TEX=pdflatex

.PHONY: all remove_old_pdfs clean makediff

all: remove_old_pdfs pattern output clean makediff

output: ${OUTPUT}.pdf
pattern: $(PATTERN).pdf

remove_old_pdfs:
	-rm ${OUTPUT}.pdf $(PATTERN).pdf

$(PATTERN).pdf:
	$(TEX) $(PATTERN).tex
	$(TEX) $(PATTERN).tex

${OUTPUT}.pdf:
	$(TEX) ${OUTPUT}.tex
	biber ${OUTPUT}.bcf
	$(TEX) ${OUTPUT}.tex

clean:
	-rm *.aux *.bbl *.blg *.bcf *.run.xml *.out *.log

makediff:
	diffpdf $(PATTERN).pdf $(OUTPUT).pdf &

