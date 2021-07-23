#!/bin/bash

##### Essential Linux Installs #####
sudo apt-get install -y build-essential

##### Setting up VSCode defaults #####
cp .brev/settings.json ../.vscode/settings.json 

##### Your VSCode Extensions (EDIT) #####
# code-server --install-extension <EXTENSION_ID>

##### Recommended VSCode Extensions #####
# code-server --install-extension esbenp.prettier-vscode
# code-server --install-extension dbaeumer.vscode-eslint
# code-server --install-extension golang.go
# code-server --install-extension ryanolsonx.solarized
# code-server --install-extension ms-vscode.sublime-keybindings
# code-server --install-extension tyriar.sort-lines
# code-server --install-extension ms-azuretools.vscode-docker

##### Zsh #####
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "zsh" >> ~/.bashrc
cat .brev/.bash_profile >> ~/.zshrc
source ~/.zshrc

##### Yarn #####
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update
# sudo apt install -y yarn

##### Node v14.x + npm #####
# curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
# sudo apt-get install -y nodejs

##### Python + Pip + Poetry #####
# sudo apt-get install -y python3-distutils
# sudo apt-get install -y python3-apt
# curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py
# rm get-pip.py
# source $HOME/.poetry/env
