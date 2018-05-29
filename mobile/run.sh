# if [ ! -d "./docker-compose.yml" ];then
# download="curl -s https://raw.githubusercontent.com/sysu-SAAD-project/script/master/dev/docker-compose.yml -o docker-compose.yml"
# $download
# else
# echo "file exits"
# fi
# run="docker-compose up -d"
# $run
cd db/
docker-compose up -d
cd ../pc
docker-compose up -d
cd ../mobile
docker-compose up -d
cd ..
docker-compose up -d