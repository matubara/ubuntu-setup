echo "DELETE ALL DOCKER CONTAINERS, IMAGES AND RELATED RESORCES"
read -p "Press [Enter] key to move on to the next."
docker stop $(docker ps -a -q)
read -p "Press [Enter] key to move on to the next."
docker rm $(docker ps -a -q)
read -p "Press [Enter] key to move on to the next."
docker rmi $(docker images -q)
read -p "Press [Enter] key to move on to the next."
docker volume prune
read -p "Press [Enter] key to move on to the next."
docker network prune
echo "Completed"
