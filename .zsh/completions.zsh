# ----
# compensation
autoload -U compinit
autoload history-search-end
compinit -u
# brew install zsh-completions
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi
if [ -e ~/.zsh/completions ]; then
  fpath=(~/.zsh/completions $fpath)
fi
if [ -e ~/.zsh/completions_local ]; then
  fpath=(~/.zsh/completions_local $fpath)
fi
