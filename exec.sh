#!/bin/bash
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex


#for VARIABLE in 1 # 2 ##habilitar para corregir paginas glosario
#do
    echo ""
    echo "###################################"
    echo "pdflatex -shell-escape main"
    echo "###################################"
    echo ""
	pdflatex -shell-escape main
	
    echo ""
    echo "###################################"
    echo "makeindex main.idx -s StyleInd.ist"
    echo "###################################"
    echo ""
	makeindex main.idx -s StyleInd.ist
	
    echo ""
    echo "###################################"
    echo "biber main"
    echo "###################################"
    echo ""
	biber main
	
    echo ""
    echo "###################################"
    echo "pdflatex -shell-escape main"
    echo "###################################"
    echo ""
	pdflatex -shell-escape main
	
    echo ""
    echo "###################################"
    echo "makeindex main.idx -s StyleInd.ist"
    echo "###################################"
    echo ""
	makeindex main.idx -s StyleInd.ist
	
    echo ""
    echo "###################################"
    echo "pdflatex -shell-escape main x 2"
    echo "###################################"
    echo ""
	pdflatex -shell-escape main x 2
#done

#mv -f main.pdf nome-do-livro.pdf

 play -n synth 1 sine 880 vol 0.5 #printf '\a' #tput bel
./clean.sh main
