FROM ubuntu:22.04

# Install required dependencies
RUN apt-get -y update && apt-get install -y wget

# Download and install EMQX broker
RUN wget https://www.emqx.com/en/downloads/broker/5.1.1/emqx-5.1.1-ubuntu22.04-amd64.deb && \
    apt install -y ./emqx-5.1.1-ubuntu22.04-amd64.deb

# Start EMQX broker
CMD emqx start
