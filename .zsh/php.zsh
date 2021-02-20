if [ -x "`which php`" ]; then
  export PATH=$PATH:~/.composer/vendor/bin
fi

alias sail='bash vendor/bin/sail'
