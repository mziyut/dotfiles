# zsh  option

export EDITOR=vim
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export KCODE=u
export AUTOFEATURE=true

bindkey -v

setopt no_beep
setopt no_list_beep
setopt auto_cd
setopt auto_pushd
setopt correct
setopt magic_equal_subst
setopt prompt_subst
setopt notify
setopt equals
setopt extended_glob

unsetopt glob_dots
