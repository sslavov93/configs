ZSH_DISABLE_COMPFIX=true

export ZSH="/Users/svet/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/Users/svet/Library/Python/3.7/bin"

[[ -s /Users/svet/.autojump/etc/profile.d/autojump.sh ]] && source /Users/svet/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

eval "$(direnv hook zsh)"
