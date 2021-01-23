# zshrc alias
alias work="cd ~/Workspace"
alias vi="vim"
alias v="nvim"
alias ll="ls -lG"
alias la="ls -la"

##
# gomi
alias rm="gomi"

##
# thefuck
# https://github.com/nvbn/thefuck
alias fuck='eval $(thefuck $(fc -ln -1))'
alias FUCK='fuck'


## git
[ -f ~/.zsh/alias/git.zsh ] && source ~/.zsh/alias/git.zsh

## php
[ -f ~/.zsh/alias/php.zsh ] && source ~/.zsh/alias/php.zsh

# tmux
[ -f ~/.zsh/alias/tmux.zsh ] && source ~/.zsh/alias/tmux.zsh

# ssh
alias pssh="grep -w Host ~/.ssh/config | peco | awk '{print $2}' | xargs -o -n 1 ssh"
