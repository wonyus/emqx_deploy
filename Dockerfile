FROM ubuntu:22.04

# Install required dependencies
RUN apt-get update && \
    apt-get install -y wget 

# Download and install EMQX broker
RUN cd
RUN curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh | sudo bash
RUN sudo apt-get install emqx

# Start EMQX broker
CMD ["sudo", "systemctl", "start", "emqx"]
