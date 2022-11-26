 echo "$(tput setaf 3)Stop all containers."
 echo "$(tput setaf 7)"
docker stop $(docker ps -a -q)
