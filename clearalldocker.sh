# Delete every Docker containers
# Must be run first because images are attached to containers
docker rm -f $(docker ps -a -q) -f

# Delete every Docker image
docker rmi -f $(docker images -q) -f
