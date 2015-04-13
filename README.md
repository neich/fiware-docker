# fiware-docker

This is a set of Dockerfiles to allow Fiware users to "dockerize" some of the General Enabler implementations so you can easily rund the different services independently of the server type.

## Base images

Some GEs share a base image that only has to be built once.

### CentOS 6.3

You can build this image with:

```
make base_centos63-image
```

### Orion

Depends on ```base_centos63```

An image of the The Orion context broker can be build with:

```make GIT_URL=... GIT_BRANCH=... orion-image```

That means that you can build an image of any branch that you choose. For example:

```
# Build bleeding edge version
make GIT_URL=https://github.com/telefonicaid/fiware-orion.git GIT_BRANCH=develop orion-image
# Build an specific release
make GIT_URL=https://github.com/telefonicaid/fiware-orion.git GIT_BRANCH=release/0.9.1 orion-image
```

Or you can use forked repositories to build versions with features still pending in a pull request. For exemple, if you want to use Docker with CORS support (as of 13/04/2015):

```make GIT_URL=https://github.com/jmcanterafonseca/fiware-orion.git GIT_BRANCH=cors3 orion-image```

### Running a GE

Once you have built your image, you can run it with Docker. For exemple, if you want to run your Orion context broker:

```sudo docker run -d -p 1026:1026 ubikwa:orion```

After that your server is listening on port 1026 and forwarding it to 1026 at your docker container.
