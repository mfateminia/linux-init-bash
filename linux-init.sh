#!/bin/bash
echo "Press any key to continue"
read user_answer_to_confirm

# tools
	sudo apt-get update
	sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common snapd build-essential libssl-dev
#slack
# 	sudo snap install slack --classic
#git
	sudo apt-get update
	sudo apt install git -y
#nvm: check the version from https://github.com/creationix/nvm/releases
	sudo apt-get update
	sudo curl https://raw.githubusercontent.com/creationix/nvm/v0.38.0/install.sh | bash
	source ~/.profile
#docker & docker-compose
# 	sudo apt-get update
# 	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# 	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"
# 	sudo apt-get update
# 	sudo apt-get -y  install docker-ce docker-compose
# 	sudo usermod -aG docker $USER
#vs code
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt-get update
	sudo apt-get install code
#chrome
	sudo apt-get update
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
	sudo apt-get update 
	sudo apt-get install google-chrome-stable
#robomongo
# 	sudo apt-get update
# 	sudo snap install robomongo
#wireguard
# 	sudo apt install wireguard
#zsh
	sudo apt-get update
	sudo apt-get install zsh -y
	sudo usermod -s /usr/bin/zsh $(whoami)
	echo "-------------------------------------------------------"
	echo "Reboot PC, and select option (2) upon start of terminal to configure zsh"
	echo "-------------------------------------------------------"
