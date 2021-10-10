# node
if [ -x "`which nodenv`" ]; then
  eval "$(nodenv init -)"
fi
# php
if [ -x "`which php`" ]; then
  export PATH=$PATH:~/.composer/vendor/bin
fi
# ruby
if [ -x "`which rbenv`" ]; then
  eval "$(rbenv init -)"
fi
# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# go
if [ -x "`which go`" ]; then
  export GOROOT=`go env GOROOT`
  export GOPATH=$HOME/.go
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi
