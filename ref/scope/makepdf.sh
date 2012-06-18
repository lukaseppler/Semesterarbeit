#!/bin/sh
PDF=Semesterarbeit-SFreihofer-Aufgabenstellung.pdf

cd $(dirname $0)
pandoc --latex-engine=xelatex \
	-V documentclass=article \
	-V lang=ngerman \
	-V geometry=a4paper,tmargin=2.4cm,bmargin=2.8cm,lmargin=2.8cm,rmargin=2.8cm \
	-o $PDF \
	scope.markdown
echo $PDF

