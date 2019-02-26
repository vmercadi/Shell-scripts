#!/bin/sh -

###
### INSTALL ALL NEEDED
###

GR='\033[0;32m'
NC='\033[0m'

#------------------------------------------------------------------------------

# Start
sudo apt-get update
sudo apt-get upgrade
echo "${GR}Update & upgrade -> OK${NC}"
# Git
sudo apt-get install git
echo "${GR}Git -> OK${NC}"
# Ecryptfs
sudo apt-get install ecryptfs-utils
echo "${GR}Ecryptfs-utils -> OK${NC}"
# VIM
sudo apt-get install vim
echo "${GR}Vim -> OK${NC}"
# ZSH
sudo apt-get install zsh
echo "${GR}Zsh -> OK${NC}"

#------------------------------------------------------------------------------

# Sublime text
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
echo "${GR}Sublime-text -> OK${NC}"

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "${GR}Oh-my-zsh -> OK${NC}"

# Docker
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
echo "${GR}Docker -> OK${NC}"

# Docker-CE
sudo apt-get install docker-ce
echo "${GR}Docker-CE -> OK${NC}"
# Docker compose
sudo apt-get install docker-compose
echo "${GR}Docker-compose -> OK${NC}"

#Signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
echo "${GR}Signal -> OK${NC}"

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
echo "${GR}PIP -> OK${NC}"

#------------------------------------------------------------------------------

######### Alias #########
#Luminosité
name=`xrandr|grep ' connected '|awk '{print $1}'`
lum="xrandr --output "
lum+=$name 
lum+="--brightness "
echo 'alias cd..="cd .."\nalias open="xdg-open\nalias $lum "' >> ~/.zshrc
echo "${GR}Alias -> OK${NC}"