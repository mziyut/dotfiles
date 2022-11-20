function sssh --wraps=ssh --description 'alias sssh=ssh `cat $HOME/.ssh/config | grep "Host " | cut -d " " -f 2 | peco`'
  ssh `cat $HOME/.ssh/config | grep "Host " | cut -d " " -f 2 | peco`
end
