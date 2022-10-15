---
title:  "Markdown thesis template experiment"
author: "Ólafur Sverrir Kjartansson"
date: "Reykjavík, October 15th 2022"
papersize: a4
lang: en
figure-title: "Image"
numbersections: true
csl: ieee.csl
bibliography: references.bib
geometry:
- top=40mm
- right=30mm
- bottom=40mm
- left=30mm
header-includes:
- \usepackage{biblatex}
# Control list item margins
- \usepackage{enumitem}
- \setlist[itemize]{left=0pt}
---

## About

Experiment in setting up a [Markdown + LaTeX thesis building workflow](https://github.com/osk/thesis-workflow).

## Dummy text

Lorem ipsum dolor sit amet[@fail], consectetur adipiscing elit[@lacombeCanYouAccept2021], sed do eiusmod tempor incididunt ut labore et dolore magna aliqua[@lacombeCanYouAccept2021, p. 10, some extra text]. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat[^1]. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident[_see also_ @LaTeX2022 p. **32**], sunt in culpa qui officia deserunt mollit anim id est laborum.

Unknown citation (`fail?` above) will we flagged when building:

```bash
[WARNING] Citeproc: citation fail not found
```

[^1]: In a footnote [@LaTeX2022].

## Text from latex template

First as just raw \LaTeX.

\begin{itemize}
 \item Friðrík H. Jónsson og Sigurður J. Grétarsson (2007). \textit{Gagnfræðikver fyrir háskólanema}, Háskólaútgáfan, Reykjavík.~\cite{JonssonGretarsson2018}
 \item Ingibjörg Axelsdóttir og Þórunn Blöndal (2006).  \textit{Handbók um ritun og frágang},  Mál og menning, Reykjavík.~\cite{AxelsdottirBlondal2006}
\end{itemize}

Then as Markdown:

* Friðrík H. Jónsson og Sigurður J. Grétarsson (2007). _Gagnfræðikver fyrir háskólanema_, Háskólaútgáfan, Reykjavík. [@JonssonGretarsson2018]

* Ingibjörg Axelsdóttir og Þórunn Blöndal (2006).  _Handbók um ritun og frágang_,  Mál og menning, Reykjavík. [@AxelsdottirBlondal2006]

## Bibliography

<!-- We need something here so the title is added to ToC and has a number -->
