FROM debian:latest
RUN apt-get update \
    && apt-get -y dist-upgrade \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
    make \
    texlive \
    texlive-latex-extra \
    cm-super \
    texlive-fonts-extra \
    graphicsmagick-imagemagick-compat \
    ghostscript \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \ 
    && rm -rf /tmp/*
WORKDIR /home
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
