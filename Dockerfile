FROM alpine:3.7
LABEL version="1.0.0"
LABEL maintainer="Raveesh <public@raveesh.io>"

RUN apk update && apk add autoconf \
    automake \
    nodejs \
    nodejs-npm \
    php7 \
    php7-dom \
    php7-tokenizer \
    php7-xmlwriter \
    php7-curl \
    php7-phar \
    php7-openssl \
    php7-mbstring \
    php7-mcrypt \
    php7-ctype \
    php7-json \
    php7-xmlrpc \
    php7-common \
    php7-session \
    php7-zlib \
    wget \
    ca-certificates \
    openssl \
    git \
    libpng-dev \
    autoconf \
    automake \
    make \
    g++ \
    libtool \
    nasm

COPY composer-setup.sh /tmp/composer-setup.sh
RUN chmod +x /tmp/composer-setup.sh
RUN /tmp/composer-setup.sh
RUN rm /tmp/composer-setup.sh
RUN npm install -g yarn
