all: main.pdf

main.pdf: main.tex paper/*.tex bibliography.bib bioinfo.cls
	pdflatex main
	-bibtex main
	pdflatex main
	pdflatex main

clean:
	rm -f main.{aux,bbl,blg,log,out,pdf,toc}

.PHONY: all clean
