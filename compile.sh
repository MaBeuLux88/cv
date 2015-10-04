#!/bin/bash
make very-clean
pdflatex cv.tex
pdflatex cv.tex
evince cv.pdf &
