# to execute    ./recreate artifact_usename

docker login -u $1 
docker pull $1/help-site
docker stop running-help-site
docker rm running-help-site
docker run -dit --name running-help-site -p 8080:80 $1/help-site