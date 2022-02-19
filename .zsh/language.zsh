# node
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
# php
if [ -x "`which php`" ]; then export PATH=$PATH:~/.composer/vendor/bin; fi
# ruby
if [ -x "`which rbenv`" ]; then eval "$(rbenv init -)"; fi
# python
if which pyenv > /dev/null; then eval "$(pyenv init --path)"; fi
# go
if [ -x "`which go`" ]; then
  export GOROOT=`go env GOROOT`
  export GOPATH=$HOME/.go
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi
