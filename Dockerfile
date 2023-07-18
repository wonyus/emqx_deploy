# Use the base image with the desired version of Ubuntu
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y git make && \
    rm -rf /var/lib/apt/lists/*

# Clone the EMQX repository
RUN git clone https://github.com/emqx/emqx.git

# Set the working directory
WORKDIR /emqx

# Build EMQX
RUN make

# Start EMQX console
CMD ["/emqx/_build/emqx/rel/emqx/bin/emqx", "console"]
