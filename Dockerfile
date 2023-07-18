FROM ubuntu:22.04

# Install required dependencies
RUN sudo apt-get update && 

# Download and install EMQX broker
RUN cd
RUN curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh | sudo bash
RUN sudo apt-get install emqx

# Start EMQX broker
CMD ["sudo", "systemctl", "start", "emqx"]
