# SYSU-activityPlus server script


 This repository is served for running the server of sysu-activity.

## Introduction


This script is composed of two parts, dev and production.

- DEV

  Folder dev/ contains the docker compose file. It was built by a redis server which is used to store user session information, a mysql server which is used to store all the data, a nginx gateway which is used for proxy , a phpmyadmin client which is used for managing mysql and a service end which support the service. Besides that, we also have a configured nginx.conf file which is used by the nginx container.

- PRODUCTION

  Folder production/ includes the same thing as DEV besides the phpmyadmin to ensure sevurity. It has seperated data folder with DEV to make sure the production environment will npt be broken by the development.

The root folder contains another compose file which is used for gateway. Both DEV and PRODUCTION can not be visited directly from outside, users can only visit the given api which is proxy by the gateway.

## Usage


Just enter these command. It will help you download the `docker-compse.yml` and start to build it.
```shell
    $ chmod +x run.sh
    $ ./run.sh
```

## url介绍

- 小程序服务端

  https://sysuactivity.com/

- pc服务端

  https://sysuactivity.com/api/

- pc前端

  https://sysuactivity.com/admin/
