FROM alpine:latest

LABEL maintainer="avi@lior.org"

#RUN - Runs a command in the container
RUN echo "Hello world" > /tmp/hello_world.txt

#CMD - Identifies the command that should be used by default when running the image as a container.
ENTRYPOINT ["cat", "/tmp/hello_world.txt"]
