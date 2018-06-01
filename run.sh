# if [ ! -d "./docker-compose.yml" ];then
# download="curl -s https://raw.githubusercontent.com/sysu-SAAD-project/script/master/dev/docker-compose.yml -o docker-compose.yml"
# $download
# else
# echo "file exits"
# fi
# run="docker-compose up -d"
# $run
docker pull txzdream/sysu-activityplus-pc:dev
docker pull xiaxzh/script:dev
docker pull txzdream/sysu-activityplus-pc-mail-service:dev
docker pull txzdream/sysu-activityplus-pc-service_end:dev
docker pull phpmyadmin/phpmyadmin
docker pull nginx
docker pull rabbitmq:3-management
echo y | docker image prune
docker rm $(docker ps -a -q) -f
cd db/
docker-compose up -d
cd ../pc
docker-compose up -d
cd ../mobile
docker-compose up -d
cd ..
docker-compose up -d