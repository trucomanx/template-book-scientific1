#!/bin/bash



# Utiliza un bucle for para listar archivos .tex
for archivo_tex in *.tex; do
    if [ -f "$archivo_tex" ]; then
    
        nombre_base=$(basename "$archivo_tex" .tex)
        
        mi_string="
\documentclass{article}
\usepackage[svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{shapes}

\makeatletter
\newcommand{\DefineBookColorScheme}[6]{
\expandafter\def\csname BookColorScheme@1\endcsname{#1}
\expandafter\def\csname BookColorScheme@2\endcsname{#2}
\expandafter\def\csname BookColorScheme@3\endcsname{#3}
\expandafter\def\csname BookColorScheme@4\endcsname{#4}
\expandafter\def\csname BookColorScheme@5\endcsname{#5}
\expandafter\def\csname BookColorScheme@6\endcsname{#6}
}
\makeatother

\makeatletter
\newcommand{\DatCtxVar}[2]{%
  \csname #1@#2\endcsname
}
\makeatother

\input{"$nombre_base"}

\pagestyle{empty}
\begin{document}
\begin{tikzpicture}
  % Define los colores

  % Dibuja los rectángulos de colores
  \foreach \x in {1,2,3,4,5,6} 
  {
    \node[rectangle, fill=\DatCtxVar{BookColorScheme}{\x}, minimum width=2cm, minimum height=6cm] at (\x*2, 0) {};
  }
  \foreach \x in {1,2,3,4,5,6} 
  {
    \extractcolorspecs{\DatCtxVar{BookColorScheme}{\x}}{\modelo}{\format}
    \convertcolorspec{\modelo}{\format}{RGB}\tmp
    \node[rotate=90,text width=6cm] at (\x*2, 0) {ColorScheme\x\\\\ (\tmp)};
  }
\end{tikzpicture}

\end{document}

        "
        echo "$mi_string"> main.tex
        
        pdflatex -shell-escape main
        pdflatex -shell-escape main
        pdflatex -shell-escape main
        
        pdftoppm -r 300 main.pdf main -png
        
        convert -trim main-1.png $nombre_base.png
        
        rm -rf main
        rm -f main.tex
        rm -f main-1.png
        rm -f main.pdf
        rm -f *-epspdf-to.pdf
        rm -f *converted-to.pdf
        rm -f *.backup
        rm -f *.aux 
        rm -f *.log
    fi
done


# Utiliza un bucle for para listar archivos .tex
for archivo_tex in *.tex; do
    if [ -f "$archivo_tex" ]; then
    
        nombre_base=$(basename "$archivo_tex" .tex)
        
        mi_string="
\documentclass{article}
\usepackage[svgnames]{xcolor}
\usepackage{pgffor}

\makeatletter
\newcommand{\DefineBookColorScheme}[6]{
\expandafter\def\csname BookColorScheme@1\endcsname{#1}
\expandafter\def\csname BookColorScheme@2\endcsname{#2}
\expandafter\def\csname BookColorScheme@3\endcsname{#3}
\expandafter\def\csname BookColorScheme@4\endcsname{#4}
\expandafter\def\csname BookColorScheme@5\endcsname{#5}
\expandafter\def\csname BookColorScheme@6\endcsname{#6}
}
\makeatother

\makeatletter
\newcommand{\DatCtxVar}[2]{%
  \csname #1@#2\endcsname
}
\makeatother

\input{"$nombre_base"}

\pagestyle{empty}
\begin{document}
\noindent
\{\\\\
  \foreach \x in {1,2,3,4,5,6} 
  {
    \extractcolorspecs{\DatCtxVar{BookColorScheme}{\x}}{\modelo}{\format}
    \convertcolorspec{\modelo}{\format}{RGB}\tmp
    \texttt{'}ColorScheme\x\texttt{'}:[\tmp]%
    \ifnum\x<6 ,\fi\\\\
  }
\}\\\\

\end{document}

        "
        echo "$mi_string"> main.tex
        
        pdflatex -shell-escape main
        pdflatex -shell-escape main
        pdflatex -shell-escape main
        
        pdftotext -layout main.pdf $nombre_base.json
        sed -i "s/’/\"/g" "$nombre_base.json"
        head -n -1 "$nombre_base.json" > tmp.tmp
        mv -f tmp.tmp "$nombre_base.json"
        
        rm -rf main
        rm -f main.tex
        rm -f main.pdf
        rm -f *-epspdf-to.pdf
        rm -f *converted-to.pdf
        rm -f *.backup
        rm -f *.aux 
        rm -f *.log
    fi
done

