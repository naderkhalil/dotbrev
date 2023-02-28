#!/bin/bash

##### Essential Linux Installs #####
sudo apt-get install -y build-essential

##### Setting up VSCode defaults #####
mkdir -p /home/brev/.local/share/code-server/User
cp .vscode/settings.json /home/brev/.local/share/code-server/User/settings.json

##### Your VSCode Extensions (EDIT) #####
# code-server --install-extension <EXTENSION_ID>

##### Recommended VSCode Extensions #####
code-server --install-extension esbenp.prettier-vscode
code-server --install-extension dbaeumer.vscode-eslint
code-server --install-extension golang.go
code-server --install-extension ryanolsonx.solarized
code-server --install-extension ms-vscode.sublime-keybindings
# code-server --install-extension tyriar.sort-lines
# code-server --install-extension ms-azuretools.vscode-docker

##### Zsh #####
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "zsh" >> ~/.bashrc
cat .brev/.bash_profile >> ~/.zshrc

##### Add Env Name to Terminal Prompt #####
# Define a function called getName
function getName {
  # Use jq to extract the "workspaceId" key from the "/etc/meta/workspace.json" file
  workspaceId=$(jq -r '.workspaceId' /etc/meta/workspace.json)

  # Use brev ls to list the dev environments and grep for the row that contains the workspace ID
  row=$(brev ls | grep "$workspaceId")

  # Extract the "NAME" column from the row using awk
  name=$(echo "$row" | awk '{print $1}')

  # Print the name
  echo "$name"
}

# Get the name using the getName function
name=$(getName)

# Replace the PROMPT line in robbyrussell.zsh-theme with a new prompt that includes the name
sed -i "s/^PROMPT=.*/PROMPT=\"%{\$fg_bold[cyan]%}$name %(?:%{\$fg_bold[green]%}➜ :%{\$fg_bold[red]%}➜ )\"/" ~/.oh-my-zsh/themes/robbyrussell.zsh-theme

source ~/.zshrc
