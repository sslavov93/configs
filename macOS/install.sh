# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Oh My ZSH
chsh -s "$(which zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Environment
cp .zshrc ~/.zshrc
cp agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Node Setup (COC dependency)
./uninstall-node.sh
echo "Please visit https://nodejs.org/en/download/ and download Node"
echo "Confirm when done by pressing Enter Key"
read

# Simple Tooling
brew install htop direnv wget tmux yarn

# Autojump
git clone git://github.com/wting/autojump.git
cd autojump
./install.sh
cd ~

# Vim
cp .vimrc ~/.vimrc

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# COC Setup
vim -c ':call coc#util#install()'
vim -c 'CocInstall coc-python coc-rust-analyzer coc-json coc-markdownlint'
cp coc-settings.json ~/.vim/coc-settings.json

# Rust Analyzer
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-linux -o ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

# Git
git config --global user.name "sslavov93"
git config --global user.email "sslavov93@gmail.com"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

ssh-keygen -t rsa -b 4096 -C "sslavov93@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

