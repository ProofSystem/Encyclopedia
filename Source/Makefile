TEX=pdflatex
BIBTEX=biber
MAKEINDEX=makeindex


all : main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	$(BIBTEX) --recodedata=recode_data.xml main
	$(MAKEINDEX)  logics
	$(MAKEINDEX)  calculusTypes
	$(MAKEINDEX)  authors
	$(MAKEINDEX)  calculusAuthors
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<


cleanaux : 
	rm -f main.aux  main.bbl  main.bcf  main.blg  main.idx  main.log  main.out  main.run.xml  main.toc intros.aux preface.aux glossary.aux
	rm -f proofsystems.aux


clean : 
	rm -f main.pdf main.aux  main.bbl  main.bcf  main.blg  main.idx  main.log  main.out  main.run.xml  main.toc intros.aux preface.aux glossary.aux
	rm -f proofsystems.aux


