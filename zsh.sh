sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo mv ~/.zshrc .zshrc_bak
sudo cp zshrc ~/.zshrc