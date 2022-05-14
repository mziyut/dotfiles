# include files
[ -f ~/.zsh/option.zsh ] && source ~/.zsh/option.zsh
[ -f ~/.zsh/color.zsh ] && source ~/.zsh/color.zsh
[ -f ~/.zsh/language.zsh ] && source ~/.zsh/language.zsh
[ -f ~/.zsh/tmux.zsh ] && source ~/.zsh/tmux.zsh
[ -f ~/.zsh/personal.zsh ] && source ~/.zsh/personal.zsh
[ -f ~/.zsh/alias/alias.zsh ] && source ~/.zsh/alias/alias.zsh

case "${OSTYPE}" in
  darwin*)
    [ -f ~/.zsh/mac.zsh ] && source ~/.zsh/mac.zsh
  ;;
  linux*)
    [ -f ~/.zsh/linux.zsh ] && source ~/.zsh/linux.zsh
  ;;
esac

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
