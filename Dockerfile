FROM ubuntu:22.04

# Install required dependencies
RUN apt-get -y update && apt-get install -y wget

# Download and install EMQX broker
RUN wget https://www.emqx.com/en/downloads/broker/5.1.1/emqx-5.1.1-ubuntu22.04-amd64.deb && \
    apt install -y ./emqx-5.1.1-ubuntu22.04-amd64.deb

ARG A
ARG B
ARG C
ARG D
ARG E


EXPOSE $A/tcp
EXPOSE $B/tcp
EXPOSE $C/tcp
EXPOSE $D/tcp
EXPOSE $E/tcp