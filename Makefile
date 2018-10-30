all: pdf

pdf: cattheory.tex
	pdflatex  -interaction=nonstopmode -shell-escape cattheory.tex
	bibtex cattheory
	makeindex cattheory.nlo -s nomencl.ist -o cattheory.nls
	pdflatex  -interaction=nonstopmode -shell-escape cattheory.tex

clean:
	rm -rf *.aux cattheory.bbl *.dvi *.blg *.toc *.out *.idx *.nlo *.ist *.nls
	rm -rf _minted-*
	find . \( -name "*.log" -o -name "*~" -o -name "*.ind" -o -name "*.ilg" \) -exec rm -rf {} \;
