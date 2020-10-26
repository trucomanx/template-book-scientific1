#!/bin/bash
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex


#for VARIABLE in 1 # 2 ##habilitar para corregir paginas glosario
#do
	pdflatex -shell-escape main
	makeindex main.idx -s StyleInd.ist
	biber main
	pdflatex -shell-escape main
	makeindex main.idx -s StyleInd.ist
	pdflatex -shell-escape main x 2
#done

#mv -f main.pdf nome-do-livro.pdf

 play -n synth 1 sine 880 vol 0.5 #printf '\a' #tput bel
./clean.sh
