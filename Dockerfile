# Start from Ubuntu 22.04
FROM ubuntu:22.04

# Update the system and install git and curl
RUN apt-get update && apt-get install -y git curl

# Keep the container running
CMD tail -f /dev/null
