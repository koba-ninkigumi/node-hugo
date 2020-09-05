From node:current-alpine

ARG version="0.74.3"

RUN wget https://github.com/gohugoio/hugo/releases/download/v${version}/hugo_${version}_Linux-64bit.tar.gz \
    && tar -xzf hugo_${version}_Linux-64bit.tar.gz \
    && mv hugo /usr/local/bin/hugo \
    && mkdir -p /hugo

RUN yarn global add rollup @rollup/plugin-node-resolve rollup-plugin-terser workbox-cli \
    && @material/mwc-drawer @material/mwc-list @material/mwc-snackbar @material/mwc-tab-bar \
    && @material/mwc-textarea @material/mwc-textfield @material/top-app-bar @material/mwc-icon-button
