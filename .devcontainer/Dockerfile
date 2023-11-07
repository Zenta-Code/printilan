FROM debian:bookworm

RUN apt-get update && apt-get -y install git curl wget unzip

RUN apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN mkdir /home/codespace
WORKDIR /home/codespace

ENV PUB_CACHE=/home/codespace/.pub-cache
ENV PATH=$PATH:/home/codespace/.pub-cache/bin

RUN git clone https://github.com/flutter/flutte && \
    /home/codespace/flutter/bin/flutter config --enable-web && \
    /home/codespace/flutter/bin/flutter doctor -v && \
    /home/codespace/flutter/bin/flutter precache
    