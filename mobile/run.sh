if [ ! -d "./docker-compose.yml" ];then
download="curl -s https://raw.githubusercontent.com/sysu-SAAD-project/script/master/dev/docker-compose.yml -o docker-compose.yml"
$download
else
echo "file exits"
fi
run="docker-compose up -d"
$run
