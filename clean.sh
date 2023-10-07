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

rm -f $filename.Information*ListingExt
rm -f $filename.Definition*ListingExt
rm -f $filename.Example*ListingExt
rm -f $filename.Exercise*ListingExt
rm -f $filename.Notation*ListingExt
rm -f $filename.Theorem*ListingExt
rm -f $filename.Lemma*ListingExt
rm -f $filename.Elaboration*ListingExt
rm -f $filename.EnvPhrase*ListingExt
rm -f $filename.MisDefinicoes
rm -f $filename.MisExample
rm -f $filename.MisExercise
rm -f $filename.EnvTheorem*ListingExt
#rm -f $filename.MisTheorem
rm -f $filename.MisNotation
rm -f $filename.MisFrases
rm -f $filename.mw

