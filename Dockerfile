# Use the base image
FROM ghcr.io/emqx/emqx-builder/5.0-17:1.13.4-24.2.1-1-ubuntu20.04

# Set the working directory
WORKDIR /app

# Copy your application files to the container
COPY . /app

RUN ls -la
