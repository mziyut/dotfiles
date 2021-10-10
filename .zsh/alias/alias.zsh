# zshrc alias
alias work="cd ~/Workspace"
alias vi="vim"
alias v="nvim"
alias ll="ls -lG"
alias la="ls -la"
alias rm="gomi"

##
# thefuck
# https://github.com/nvbn/thefuck
alias fuck='eval $(thefuck $(fc -ln -1))'
alias FUCK='fuck'

[ -f ~/.zsh/alias/git.zsh ] && source ~/.zsh/alias/git.zsh

##
# PHP
# compoer
alias sail='bash vendor/bin/sail'
alias laravel="~/.composer/vendor/bin/laravel"
# laravel
alias homestead="~/.composer/vendor/bin/homestead"
alias envoy="~/.composer/vendor/bin/envoy"
# lumen
alias lumen="~/.composer/vendor/bin/lumen"
# phpunit
alias phpunit="~/.composer/vendor/bin/phpunit"
# cakephp
alias cakephp="git clone https://github.com/cakephp/cakephp.git"
alias debugkit="git clone https://github.com/cakephp/debug_kit.git"
alias boostcake="git clone https://github.com/slywalker/cakephp-plugin-boost_cake.git"
alias cake="./app/Console/cake"

##
# tmux
alias t="tmux"
alias tl="tmux list-sessions"
alias ta="tmux attach -t"
alias td="tmux detach"

# ssh
alias pssh="grep -w Host ~/.ssh/config | peco | awk '{print $2}' | xargs -o -n 1 ssh"
sssh() {
  ssh `cat $HOME/.ssh/config | grep "Host " | cut -d " " -f 2 | peco`
}
