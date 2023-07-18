# Use the base image with the desired version of Ubuntu
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y wget git make gcc openssl libssl-dev libcurl4-openssl-dev && \
    rm -rf /var/lib/apt/lists/*

# Install Erlang/OTP
RUN wget https://github.com/erlang/otp/archive/OTP-24.0.6.tar.gz && \
    tar -xf OTP-24.0.6.tar.gz && \
    rm OTP-24.0.6.tar.gz && \
    cd otp-OTP-24.0.6 && \
    ./otp_build autoconf && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf otp-OTP-24.0.6

# Clone the EMQX repository
RUN git clone https://github.com/emqx/emqx.git

# Set the working directory
WORKDIR /emqx

# Build EMQX
RUN make

# Start EMQX console
CMD ["/emqx/_build/emqx/rel/emqx/bin/emqx", "console"]
