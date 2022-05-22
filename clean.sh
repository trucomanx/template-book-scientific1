#!/bin/bash

filename=$1

rm -rf $filename


rm -f abc-*.*

rm -f */*/*-epspdf-to.pdf
rm -f */*/*converted-to.pdf
rm -f */*-epspdf-to.pdf
rm -f */*converted-to.pdf
rm -f */*/*.backup
rm -f */*/*.aux 
rm -f */*.backup
rm -f */*.aux 

rm -f *.mx1
rm -f *.idx
rm -f *.ind
rm -f *.aux 
rm -f *.log 
rm -f *.bcf 
rm -f *.out 
rm -f *.ptc 
rm -f *.run.xml 
rm -f *.toc 
rm -f *.nlo 
rm -f *.nlg 
rm -f *.nls 
rm -f *.lot 
rm -f *.lof 
rm -f *.blg 
rm -f *.bbl 
rm -f *.ilg
rm -f *.backup

#rm -f main.loe

rm -f $filename.EnvInformationBox*ListingExt
rm -f $filename.EnvElaborationBox*ListingExt
rm -f $filename.EnvPhraseBox*ListingExt
rm -f $filename.MisDefinicoes
rm -f $filename.MisExample
rm -f $filename.MisExercise
rm -f $filename.EnvTheorem*ListingExt
#rm -f $filename.MisTheorem
rm -f $filename.MisNotation
rm -f $filename.MisFrases
rm -f $filename.mw

