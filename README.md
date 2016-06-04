docker-uptime
======

A turnkey remote website monitoring application using Node.js, MongoDB, Twitter Bootstrap, Docker and Docker Composer.

The intention of docker-uptime is to be able to have a working website monitor on any Linux server that has Docker and Docker Composer with only two commands.

This implementation add on the original work of of Uptime (https://github.com/fzaninotto/uptime) by Francois Zaninotto (https://github.com/fzaninotto) and f the enhancements of Uptime 2 (https://github.com/gunmetal313-nodejs/uptime2) by gunmetal313-nodejs (https://github.com/gunmetal313-nodejs).

The Docker container is based on Alpine Linux 3.4 in order to keep the size as small as possible (229mb).

Installing
----------
Clone this git repository:
```
sudo git clone https://github.com/IFSight/uptime.git /usr/local/docker-uptime
```
Run the Docker containers:
```
sudo `which docker-compose` --file /usr/local/docker-uptime/compose/uptime.yml up -d
```

Status
------
Check that the containers are running:
```
sudo `which docker-compose` --file /usr/local/docker-uptime/compose/uptime.yml ps
```

Visit the GUI in a web browser at http://yourserver.org:8082/

Configuration
-------------
Please see the README.md of the repo that this is built on for further configuration options:

https://github.com/gunmetal313-nodejs/uptime2/blob/master/README.md
