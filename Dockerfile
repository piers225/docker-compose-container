# Use the Alpine Linux image as a base image
FROM alpine:latest

# Install dependencies
RUN apk --no-cache add docker-compose

# Set the working directory
WORKDIR /code

# Set the entry point for the container
ENTRYPOINT ["docker-compose"]

# Default command if no command is provided when running the container
CMD ["--version"]
