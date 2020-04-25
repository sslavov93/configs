# Initial Package Update
sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y update

# Simple Tools
sudo apt-get -y install zsh powerline fonts-powerline gparted curl zip unzip htop

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# ZSH
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Environment
mv .zshrc ~/.zshrc
mv agnoster ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Git
git config --global user.name "sslavov93"
git config --global user.email "sslavov93@gmail.com"
git config --global merge.tool meld
git config --global diff.guitool meld
git config --global mergetool.meld.path /usr/bin/meld

ssh-keygen -t rsa -b 4096 -C "sslavov93@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
