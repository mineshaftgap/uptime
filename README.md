docker-uptime
======

A turnkey remote website monitoring application using Node.js, MongoDB, Twitter Bootstrap, Docker and Docker Composer.

The intention of docker-uptime is to be able to have a working website monitor on any Linux server that has Docker and Docker Composer with only two commands.

This implementation adds onto the original work of of Uptime (https://github.com/fzaninotto/uptime) by Francois Zaninotto (https://github.com/fzaninotto) and furtherthe enhancements of Uptime 2 (https://github.com/gunmetal313-nodejs/uptime2) by gunmetal313-nodejs (https://github.com/gunmetal313-nodejs).

The Docker container is based on Alpine Linux 3.4 in order to keep the size as small as possible (229mb).

Installing
----------
This will install Docker Compose if it is not found, clone this git repository and run the containers:
```
curl -L https://github.com/IFSight/uptime/raw/master/run | /bin/sh
```

Status
------
Check that the containers are running:
```
sudo `which docker-compose` --file /usr/local/docker-uptime/compose/uptime.yml ps
```

Visit the GUI in a web browser at http://yourserver.org:8082/ (the curl/run install above will provide your server IP)

Configuration
-------------
Please see the README.md of the repo that this is built on for further configuration options:

https://github.com/gunmetal313-nodejs/uptime2/blob/master/README.md
