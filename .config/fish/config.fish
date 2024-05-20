# thefuck
# @see https://github.com/nvbn/thefuck/wiki/Shell-aliases
if type -q thefuck
	thefuck --alias | source
end
# nodenv
if type -q nodenv
	eval (nodenv init - | source)
end
# pyenv
if type -q pyenv
	eval (pyenv init - | source)
end
# rbenv
if type -q rbenv
	eval (rbenv init - | source)
end
if test -d ~/.cargo
	fish_add_path $HOME/.cargo/bin
end
if test -d /opt/homebrew/bin
	fish_add_path /opt/homebrew/bin
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx PATH /usr/local/bin $PATH
