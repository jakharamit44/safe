# Use an official lightweight base image
FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools
RUN apt-get update && \
    apt-get install -y curl bash && \
    rm -rf /var/lib/apt/lists/*

# Add the script to the container and run it
RUN bash -c "$(curl -fsSLk https://waf.chaitin.com/release/latest/setup.sh)"

# Optional: Expose any ports the installed software might use
EXPOSE 80

# Set a default command for the container
CMD ["bash"]
