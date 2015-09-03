# No entiendo porque hay que ejecturar los comandos en este orden
# http://www.helgefjell.de/latexitem.php?name=bibtex&language=en


#uso:
# $ make clean
# $ make pdf


pdf: referencias
	pdflatex labexp1.tex

clean:
	rm labexp1.bbl labexp1.blg labexp1.log labexp1.aux
	#rm labexp1.dvi
	continue

# antes se debe hacer un clean
referencias:
	pdflatex labexp1
	bibtex labexp1
	pdflatex labexp1
    #antes
    #latex labexp1
	#bibtex labexp1
	#latex labexp1
