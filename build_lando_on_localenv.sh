#INSTALL DOCKER/DOCKER-COMPOSER/DOCKER-MACHINE/KUSANAGI-ROD

echo "/windows/system32/drivers/etc/hostsで上記FDQNが127.0.0.1に紐付けられていることを確認ください"
echo "INSTALL DOCKER/DOCKER-COMPOSE/DOCKER-MACHINE/LANDO/KUSANAGI-ROD"
read -p "Press [Enter] key to move on to the next."

#update
sudo apt-get update 
echo "ubuntu update has completed"
read -p "Press [Enter] key to move on to the next."

sudo apt-get upgrade
echo "ubuntu upgrade has completed"
read -p "Press [Enter] key to move on to the next."

#install git
sudo apt install git
echo "git install has completed"

#set name and email to git
git config --global user.name "matsubara"
git config --global user.email "admin@sincerew.biz"

#install gettext (msgfmt)
sudo apt-get install gettext

#install docker
sudo apt-get remove docker docker-engine docker.io containerd runc


sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

#docker test
sudo docker run hello-world

sudo usermod -aG docker ${USER}

echo "DOCKER INSTALL COMPLETED"
read -p "Press [Enter] key to move on to the next."


#install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose version
echo "Docker-compose installed"
read -p "Press [Enter] key to move on to the next."




#install docker-machine
curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

echo "Docker-machine installed"
read -p "Press [Enter] key to move on to the next."

# Add privilage for docker
sudo chmod 666 /var/run/docker.sock

#install LANDO
wget https://files.lando.dev/installer/lando-x64-stable.deb
sudo dpkg -i lando-x64-stable.deb
echo "LANDO INSTALL COMPLETED"

#install kusanagi rod
#curl https://raw.githubusercontent.com/prime-strategy/kusanagi-docker/master/install.sh |bash

#echo "KUSANAGI-ROD INSTALL COMPLETED"
