#!/bin/bash
set -ex

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y git zsh fonts-powerline ttf-ancient-fonts 
echo 'Y' | sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/robbyrussell/agnosterzak/g' ~/.zshrc
wget https://raw.githubusercontent.com/zakaziko99/agnosterzak-ohmyzsh-theme/master/agnosterzak.zsh-theme -o ~/.oh-my-zsh/themes/agnosterzak.zsh-theme
chsh -s $(which zsh)
