#!/bin/bash
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex


#for VARIABLE in 1 # 2 ##habilitar para corregir paginas glosario
#do
	pdflatex -shell-escape main-report
	makeindex main-report.idx -s StyleInd.ist
	biber main-report
	pdflatex -shell-escape main-report
	makeindex main-report.idx -s StyleInd.ist
	pdflatex -shell-escape main-report x 2
#done

#mv -f main-report.pdf nome-do-livro.pdf

 play -n synth 1 sine 880 vol 0.5 #printf '\a' #tput bel
./clean.sh main-report
