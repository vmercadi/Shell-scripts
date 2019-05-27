# Install the basics needed when starting a new Parrot VM

# Colors
GR='\033[0;32m'
NC='\033[0m'

# Start
sudo apt-get update
sudo apt-get upgrade
echo "${GR}Update & upgrade -> OK${NC}"
# Git
sudo apt-get install git
echo "${GR}Git -> OK${NC}"
# VIM
sudo apt-get install vim
echo "${GR}Vim -> OK${NC}"
# ZSH
sudo apt-get install zsh
echo "${GR}Zsh -> OK${NC}"

# Sublime text
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
echo "${GR}Sublime-text -> OK${NC}"

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "${GR}Oh-my-zsh -> OK$
