#!/bin/zsh

pdflatex msc-tex.tex
biber msc-tex
pdflatex msc-tex.tex
