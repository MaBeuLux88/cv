# CV

This is just my CV. Nothing fancy :-).

# How it's done

It's just some Latex using the ModernCV template.

# How to produce a PDF the old style way?

You need the packages `make`, `texlive`, `texlive-latex-extra`, `cm-super` and `graphicsmagick-imagemagick-compat`. They are available on Debian 8 at least.

Then you just need to run the `./entrypoint.sh`

# What does the Makefile ?

The Makefile has different targets : 
* `make dir` can create the folders content, epss, figs and imgs,
* `make clean` or `make very-clean` can clean generated files,
* `make` (default) convert the JPG and PNG images to EPS format into the epss folder. Then it compiles and assembles all the tex files to build the final PDF file.

Note : If you don't want to convert image and you prefer to use directly JPG or PNG in your tex files. You can bypass everything by just running `pdflatex cv.tex` twice (the second run makes sure all the parts are correctly in place in the PDF).

# How to produce a PDF the Docker way?

Install Docker... That's a good start for this section I guess.

Run the `./docker-build.sh` to produce a new image.

When you want to generate the PDF just run `./docker-run.sh`.

This image basically contains the Debian packages required for this project to compile. It will execute the `entrypoint.sh` script inside the container, build all the stuff and destroy the container automatically :-).

It doesn't use any volume has the current path is mapped into the container.

# Questions / Help ?

Feel free to send me an email if you don't understand something : maxime.beugnet@gmail.com

# Possible update if required or requested : 

* The Makefile can convert svg with the inkscape command but the package `inkscape` is not included in this image.
* The Makefile can convert fig with the fig2dev command but the package `slang-xfig` is not included in this image.

These 2 packages have not been installed because I don't need them right now and they require 240MB...

