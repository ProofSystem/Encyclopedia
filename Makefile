TEX=pdflatex
BIBTEX=biber


all : main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	$(BIBTEX) main
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<

clean : 
	rm -f main.aux  main.bbl  main.bcf  main.blg  main.idx  main.log  main.out  main.pdf  main.run.xml  main.toc
	rm -f proofsystems.aux
	rm -f main.pdf


