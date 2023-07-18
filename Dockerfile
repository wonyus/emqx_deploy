FROM ubuntu:22.04

# Install required dependencies
RUN apt-get update && apt-get install -y curl gnupg2

# Download and install EMQX broker
RUN curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh
RUN echo "deb [arch=amd64] https://repos.emqx.io/emqx-ce/ubuntu/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/emqx.list
RUN apt-get update && apt-get install -y emqx

# Start EMQX broker
CMD ["systemctl", "start", "emqx"]
