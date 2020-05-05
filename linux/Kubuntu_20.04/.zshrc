export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.cargo/bin:$PATH"
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias update="sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y update"
