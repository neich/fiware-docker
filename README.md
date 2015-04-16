# fiware-docker

This is a set of Dockerfiles to allow Fiware users to "dockerize" some of the General Enabler implementations so you can easily rund the different services independently of the server type.

## Orion

### Base images

You can build Orion docker image form different bases. Default one is Cento OS 6.3, but you can also use Alpine Linux 3.1 (still not working)

#### CentOS 6.3

You can build this image with:

```
cd orion
make base_centos63-image
```

### Orion image


An image of the the Orion context broker can be built with (using CentOS 6.3 base):

```make GIT_URL=... GIT_BRANCH=... orion_centos63-image```

That means that you can build an image from any branch that you choose. For example:

```
# Build bleeding edge version
make GIT_URL=https://github.com/telefonicaid/fiware-orion.git GIT_BRANCH=develop orion-image
# Build an specific release
make GIT_URL=https://github.com/telefonicaid/fiware-orion.git GIT_BRANCH=release/0.9.1 orion-image
```

Or you can use forked repositories to build versions with features still pending in a pull request. For exemple, if you want to use Docker with CORS support (as of 13/04/2015):

```make GIT_URL=https://github.com/jmcanterafonseca/fiware-orion.git GIT_BRANCH=cors3 orion-image```

## Running a GE

Once you have built your image, you can run it with Docker. For exemple, if you want to run your Orion context broker:

```sudo docker run -d -p 1026:1026 ubikwa:orion_centos63```

After that your server is listening on port 1026 and forwarding it to 1026 at your docker container.
