# homebrew PATH
export PATH="/usr/local/bin:~/Workspace/github.com/mziyut/.zsh/bin:$PATH"

# include files
[ -f ~/.zsh/option.zsh ] && source ~/.zsh/option.zsh
[ -f ~/.zsh/compensation.zsh ] && source ~/.zsh/compensation.zsh
[ -f ~/.zsh/history.zsh ] && source ~/.zsh/history.zsh
[ -f ~/.zsh/color.zsh ] && source ~/.zsh/color.zsh
[ -f ~/.zsh/php.zsh ] && source ~/.zsh/php.zsh
[ -f ~/.zsh/ruby.zsh ] && source ~/.zsh/ruby.zsh
[ -f ~/.zsh/java.zsh ] && source ~/.zsh/java.zsh
[ -f ~/.zsh/docker.zsh ] && source ~/.zsh/docker.zsh
[ -f ~/.zsh/node.zsh ] && source ~/.zsh/node.zsh
[ -f ~/.zsh/heroku.zsh ] && source ~/.zsh/heroku.zsh
[ -f ~/.zsh/anyenv.zsh ] && source ~/.zsh/anyenv.zsh
[ -f ~/.zsh/go.zsh ] && source ~/.zsh/go.zsh
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
