LATEXMK=latexmk

all: ssas

ssas: ssas.pdf

ssas.pdf: ssas.tex
	${LATEXMK} -pdf $<

.phony: ssas all clean

clean:
	rm -f ./*.aux ./*.bbl ./*.blg ./*.log ./*.nav ./*.out ./*.pdf ./*.snm ./*.toc ./*.fls ./*.fdb_latexmk ./*-blx.bib ./*.run.xml
