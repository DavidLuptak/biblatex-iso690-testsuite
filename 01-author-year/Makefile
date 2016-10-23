PATTERN=pattern
OUTPUT=output
TEX=pdflatex

.PHONY: all output pattern makediff clean implode

# This is the default pseudo-target with explicit order
# of the targets.
all:
	$(MAKE) implode
	$(MAKE) pattern
	$(MAKE) output
	$(MAKE) clean
	$(MAKE) makediff

# This pseudo-target typesets an output.
output: $(OUTPUT).pdf

# This pseudo-target typesets a pattern.
pattern: $(PATTERN).pdf

# This target typesets an output.
${OUTPUT}.pdf:
	$(TEX) $(OUTPUT).tex
	biber $(OUTPUT).bcf
	$(TEX) $(OUTPUT).tex

# This target typesets a pattern.
$(PATTERN).pdf:
	$(TEX) $(PATTERN).tex
	$(TEX) $(PATTERN).tex

# This pseudo-target executes a machinery
# for comparing two pdf files.
makediff:
	diffpdf $(PATTERN).pdf $(OUTPUT).pdf &

# This pseudo-target removes any auxiliary files.
clean:
	-rm *.aux *.bbl *.blg *.bcf *.run.xml *.out *.log

# This pseudo-target removes any auxiliary files
# and the makeable pdf files.
implode: clean
	-rm $(OUTPUT).pdf $(PATTERN).pdf
