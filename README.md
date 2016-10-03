# Testsuite for the package `biblatex-iso690`

The repository contains a set of tests suitable for the development of the `biblatex-iso690` package.

## The package `biblatex-iso690`

The official repository of the `biblatex-iso690` package is [https://github.com/michal-h21/biblatex-iso690](https://github.com/michal-h21/biblatex-iso690).

## Prerequisites

Running the tests requires a `pdflatex` engine for generating pdf outputs and a tool `diffpdf` for visually comparing two pdf files.

## Usage

To run the tests, execute the `make` command within the appropriate directory ([01-author-year](../01-author-year) or [02-numeric](../02-numeric) one) and then visually compare the outputs.

## Testing method

The main idea of the testsuite is to visually compare a generated pdf output compiled against the `biblatex-iso690` package with the designed list of references conforming to the ISO 690 international standard created by the `thebibliography` environment.

Such method has been chosen based on the need of verifying the correct order of elements in a reference.
