.PHONY: all 01-author-year 02-numeric implode

# This is the default pseudo-target for all styles
# in the testsuite.
all: 01-author-year 02-numeric

# This is the pseudo-target for 'author-year' style.
01-author-year:
	$(MAKE) -C 01-author-year

# This is the pseudo-target for 'numeric' style.
02-numeric:
	$(MAKE) -C 02-numeric

# This pseudo-target removes any makeable files
# across the testsuite.
implode:
	$(MAKE) implode -C 01-author-year
	$(MAKE) implode -C 02-numeric
