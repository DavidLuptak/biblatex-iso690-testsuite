# Testsuite for the package `biblatex-iso690`

The repository contains a set of tests suitable for the development of the `biblatex-iso690` package.

## The package `biblatex-iso690`

The official repository of the `biblatex-iso690` package is [https://github.com/michal-h21/biblatex-iso690](https://github.com/michal-h21/biblatex-iso690).

## Prerequisites

Running the tests requires a `pdflatex` engine for generating pdf outputs and a tool `diffpdf` for visually comparing two pdf files.

## Usage

To run the testsuite, execute the `make` command within the appropriate directory ([01-author-year](./01-author-year) or [02-numeric](./02-numeric) one) and then visually compare the outputs.

Or execute the `make` command from the root directory to visually compare the outputs of all styles (alternatively can be specified the directory as an argument to run the testsuite only for a desired style).
```
$ make
$ make 01-author-year
$ make 02-numeric
```

## Testing method

The main idea of the testsuite is to visually compare a generated pdf output compiled against the `biblatex-iso690` package with the designed list of references conforming to the ISO 690 international standard created by the `thebibliography` environment.

Such method has been chosen based on the need of verifying the correct order of elements in a reference, neither the style nor punctuation (the ISO 690 standard itself does not prescribe any particular style of reference or citation to be strictly used) [1].

***

[1] ISO 690: Information and documentation -- Guidelines for bibliographic references and citations to information resources. Third edition. Geneva: The International Organization for Standardization, 2010.
