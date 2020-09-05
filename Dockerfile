From node:current-alpine

ARG version="0.74.3"

RUN wget https://github.com/gohugoio/hugo/releases/download/v${version}/hugo_${version}_Linux-64bit.tar.gz
RUN tar -xzf hugo_${version}_Linux-64bit.tar.gz
RUN mv hugo /usr/local/bin/hugo
RUN mkdir -p /hugo
