all: main.pdf

main.pdf: main.tex paper/*.tex bibliography.bib bioinfo.cls
	pdflatex main
	-bibtex main
	pdflatex main
	pdflatex main

preprint: preprint.pdf

preprint.pdf: preprint.tex paper/*.tex bibliography.bib
	pdflatex preprint
	-bibtex preprint
	pdflatex preprint
	pdflatex preprint

clean:
	rm -f main.{aux,bbl,blg,log,out,pdf,toc}
	rm -f preprint.{aux,bbl,blg,log,out,pdf,toc}

.PHONY: all preprint clean
