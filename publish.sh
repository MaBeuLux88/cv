#!/bin/bash
make very-clean
pdflatex cv.tex
pdflatex cv.tex
scp cv.pdf yoda:/var/www/cv_Maxime_Beugnet/cv.pdf
