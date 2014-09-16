docker-php
==========

PHP application in Docker container based on Ubuntu 14.04.

## Quick-start

Create a container:

```
docker build -t="ubuntu-phpapp" .
```

Run it:

```
docker run -d -p 80:80 ubuntu-phpapp
```

Point your browser to host IP address.

Get ID of running container:

```
docker ps
```

Terminate container:

```
docker kill CONTAINER_ID
```
