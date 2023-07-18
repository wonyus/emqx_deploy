FROM ubuntu:22.04

# Install required dependencies
RUN apt-get update && apt-get install  curl

# Download and install EMQX broker
RUN curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh

RUN apt-get -y install emqx

# Start EMQX broker
CMD ["systemctl", "start", "emqx"]
