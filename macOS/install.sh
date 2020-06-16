# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Oh My ZSH
chsh -s "$(which zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Simple Tooling
brew install htop direnv wget 

# Autojump
git clone git://github.com/wting/autojump.git
cd autojump
./install.sh
cd ~

# Git
git config --global user.name "sslavov93"
git config --global user.email "sslavov93@gmail.com"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

ssh-keygen -t rsa -b 4096 -C "sslavov93@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

