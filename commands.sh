echo  "hallo"

docker stop php_site2

sleep 3

docker build -t my-php-site:latest . 

docker run -d -p 80:80 --name php_site2 my-php-site:latest
