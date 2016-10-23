.PHONY: all 01-author-year 02-numeric implode

all: 01-author-year 02-numeric

01-author-year:
	$(MAKE) -C 01-author-year

02-numeric:
	$(MAKE) -C 02-numeric

implode:
	$(MAKE) implode -C 01-author-year
	$(MAKE) implode -C 02-numeric
