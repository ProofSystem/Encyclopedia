TEX=pdflatex
BIBTEX=biber


all : main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	$(BIBTEX) --recodedata=recode_data.xml main
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<

cleanaux : 
	rm -f main.aux  main.bbl  main.bcf  main.blg  main.idx  main.log  main.out  main.run.xml  main.toc
	rm -f proofsystems.aux

clean : 
	rm -f main.pdf main.aux  main.bbl  main.bcf  main.blg  main.idx  main.log  main.out  main.run.xml  main.toc
	rm -f proofsystems.aux


