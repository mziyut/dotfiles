# zsh option
# --
# export global settings
export EDITOR=nvim
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export KCODE=u
export AUTOFEATURE=true
export XDG_BASE_HOME="~/.config"
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] "
# ---
# Set bindkey
bindkey -v
bindkey "^[[Z" reverse-menu-complete
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward
# ---
# Set setopt, unsetopt
setopt auto_cd
setopt auto_list
setopt auto_menu
setopt auto_pushd
setopt bang_hist
setopt correct
setopt equals
setopt extended_glob
setopt extended_history
setopt hist_expand
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt list_packed
setopt list_types
setopt magic_equal_subst
setopt notify
setopt no_beep
setopt no_list_beep
setopt prompt_subst
setopt share_history
unsetopt glob_dots
# ---
# Set zstyle
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
