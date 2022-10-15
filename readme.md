# Thesis workflow

Experiments in creating a workflow for thesis work.

[msc.tex](./msc-tex.tex) is based on [UoI MSc thesis template (English) V2.0.3 25.4.2022](https://gitlab.com/uice/thesistemplate) by [Helmut Neukirchen](https://uni.hi.is/helmut/2017/11/27/latex-templates-for-theses-at-university-of-iceland-latex-snidmat-ritgerdar-lokaverkefna-haskola-islands/).

[msc.md](./msc-markdown.md) is an attempt to start a workflow where text is written in Markdown and then transpiled into TeX and built with [`pandoc`](https://pandoc.org/).

References are exported from [Zotero](https://www.zotero.org/).

Copied the references from UoI MSc thesis template into the file as well.

## Why?

I like to write in Markdown, its got the right amount of formatting and extensions (e.g. tables, footnotes) to make it versatile _and_ human-readable.

Writing in LaTeX is not my thing but I like tooling and everything you get from using LaTeX. Pandoc is amazing and can combine these two worlds.

## Zotero workflow

Using Zotero for the first time, I added:

* a browser extension and added some papers.
* added [Better BibTeX for Zotero](https://github.com/retorquere/zotero-better-bibtex).

From Zotero, select the papers and export: `File > Export Library...`, selecting `Better BibTex` as format and exporting to _this_ directory as `references.bib`.

## Building

Build markdown with

```bash
pandoc -s ./msc-markdown.md -o ./msc-markdown.pdf --pdf-engine=xelatex --shift-heading-level-by=-1 --citeproc

# or the build bash
chmod +x ./build-md.sh
./build-md.sh
```

see exmple in [msc-markdown.pdf](./msc-markdown.pdf).

Build tex with

```bash
pdflatex msc-tex.tex
biber msc-tex
pdflatex msc-tex.tex

# or the build bash
chmod +x ./build-tex.sh
./build-tex.sh
```

see exmple in [msc-tex.pdf](./msc-tex.pdf).

## TODO

* [ ] Read through and understand the latex template, there are quite a few warnings, is it my setup?
* [ ] Start migrating from tex template into _something_ that works with Markdown.
* [ ] Research different citation formats, now just `ieee.csl` to test _something_.
* [ ] Figure out **all** dependencies, how would someone build this from scratch?
