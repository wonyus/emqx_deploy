FROM ubuntu:22.04

# Install required dependencies
RUN apt-get -y update && apt-get install -y curl

# Download and install EMQX broker
RUN curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh

RUN apt-get install -y emqx

# Start EMQX broker
CMD ["systemctl", "start", "emqx"]
