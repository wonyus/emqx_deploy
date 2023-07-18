FROM ubuntu:22.04

# Install required dependencies
RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

# Download and install EMQX broker
RUN wget https://www.emqx.com/en/downloads/broker/5.1.1/emqx-5.1.1-ubuntu22.04-amd64.deb && \
    apt install -y ./emqx-5.1.1-ubuntu22.04-amd64.deb && \
    rm emqx-5.1.1-ubuntu22.04-amd64.deb

# Start EMQX broker
CMD ["systemctl", "start", "emqx"]
