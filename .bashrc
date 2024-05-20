[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# node
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
