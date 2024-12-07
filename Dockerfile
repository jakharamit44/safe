# Use an official lightweight base image
FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools
RUN apt-get update && \
    apt-get install -y curl bash iproute2 net-tools && \
    rm -rf /var/lib/apt/lists/*

# Add the script to the container
ADD https://waf.chaitin.com/release/latest/setup.sh /setup.sh

# Make the script executable
RUN chmod +x /setup.sh

# Expose necessary ports (if known)
EXPOSE 80

# Default command to keep the container running
CMD ["bash"]
