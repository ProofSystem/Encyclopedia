TEX=pdflatex
BIBTEX=biber/biber18Linux64


all : main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	$(BIBTEX) --recodedata=recode_data.xml main
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<


withBiberForWindows: main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	./biber/biber18Windows.exe --recodedata=recode_data.xml main
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<


withBiberForMac: main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	./biber/biber18Mac64 --recodedata=recode_data.xml main
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<


withBiberForLinux32: main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	./biber/biber18Linux32 --recodedata=recode_data.xml main
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<


withBiberForLinux64: main.tex proofsystems.tex frontmatter/*.tex backmatter/*.tex mainmatter/*.tex bibliographies/*.bib 
	$(TEX) -interaction nonstopmode $<
	./biber/biber18Linux64 --recodedata=recode_data.xml main
	$(TEX) -interaction nonstopmode $<
	$(TEX) -interaction nonstopmode $<


cleanaux : 
	rm -f main.aux  main.bbl  main.bcf  main.blg  main.idx  main.log  main.out  main.run.xml  main.toc
	rm -f proofsystems.aux


clean : 
	rm -f main.pdf main.aux  main.bbl  main.bcf  main.blg  main.idx  main.log  main.out  main.run.xml  main.toc
	rm -f proofsystems.aux


