docker-php
==========

Docker container, based on Ubuntu 14.04, to run nginx, PHP-FPM.
Supervisor keeps all the things up and running.

## Quick-start

Create a container:

```
docker build -t="ubuntu-phpapp" .
```

Run it:

```
docker run -d -p 80:80 ubuntu-phpapp
```

Point your browser to host IP address. The following URLs work:

- http://HOST/index.html
- http://HOST/index.php
- http://HOST/info.php

Get ID of running container:

```
docker ps
```

Terminate container:

```
docker kill CONTAINER_ID
```
