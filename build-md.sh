#!/bin/zsh

pandoc -s ./msc-markdown.md -o ./msc-markdown.pdf --pdf-engine=xelatex --shift-heading-level-by=-1 --citeproc
