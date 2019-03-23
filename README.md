# How To Docker Pull from GitHub

## Docker build

In the Dockerfile we include:

`COPY hello.txt /tmp/hello_wold.txt`

which grabs the file from the github when building the image.

Executing the following will build the image and call it simple:

```docker build github.com/avilior/simple_image -t simple```

To run the image (the container will be removed):

```
avi$ docker run --rm -it simple
Hello from github
```

The build happens in the context of the github repo.  How does docker do that?

The system clones the repo locally and then passes the context to the Docker Daemon.

https://docs.docker.com/engine/reference/commandline/build/#git-repositories



