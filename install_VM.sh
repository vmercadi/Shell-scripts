# Install the basics needed when starting a new Parrot VM

# Colors
GR='\033[0;32m'
Yl='\033[0;33m'
NC='\033[0m'

# Start
echo "${YL} Update & Upgrade ${NC}"
sudo apt-get update
sudo apt-get upgrade
echo "${GR}Update & upgrade -> OK${NC}"
# Git
echo "${YL} Install GIT ${NC}"
sudo apt-get install -y git
echo "${GR}Git -> OK${NC}"
# VIM
echo "${YL} Install VIM ${NC}"
sudo apt-get install -y vim
echo "${GR}Vim -> OK${NC}"
# ZSH
echo "${YL} Install ZSH ${NC}"
sudo apt-get install -y zsh
echo "${GR}Zsh -> OK${NC}"

# Sublime text
echo "${YL} Install Sublime text ${NC}"
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text
echo "${GR}Sublime-text -> OK${NC}"

sudo apt-get update

# Oh-My-Zsh
echo "${YL} Install Oh My Zsh ${NC}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "${GR}Oh-my-zsh -> OK$"


