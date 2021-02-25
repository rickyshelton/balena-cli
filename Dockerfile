FROM ubuntu:groovy

WORKDIR /opt

RUN apt update && \
    apt upgrade -y && \
    apt install wget unzip git -y && \
    wget https://github.com/balena-io/balena-cli/releases/download/v12.40.2/balena-cli-v12.40.2-linux-x64-standalone.zip && \
    unzip balena-cli-v12.40.2-linux-x64-standalone.zip && \
    rm balena-cli-v12.40.2-linux-x64-standalone.zip && \
    export PATH="/opt/balena-cli:${PATH}" && \
    balena version

ENV PATH="/opt/balena-cli:${PATH}"

WORKDIR /usr/src
