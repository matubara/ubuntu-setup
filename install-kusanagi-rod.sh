#INSTALL DOCKER/DOCKER-COMPOSER/DOCKER-MACHINE/KUSANAGI-ROD

#update
sudo apt-get update 

#install gettext (msgfmt)
sudo apt-get install gettext

#enable docker command with general user
sudo usermod -aG docker $USER

#set name and email to git
git config --global user.name "sinceretechnology"
git config --global user.email "admin@sinceretechnology.com.au"

#install docker-machine
curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine



#install kusanagi rod
curl https://raw.githubusercontent.com/prime-strategy/kusanagi-docker/master/install.sh |bash

echo "KUSANAGI-ROD INSTALL COMPLETED"
