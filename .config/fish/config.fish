if status is-interactive
    # Commands to run in interactive sessions can go here
end
# thefuck
# @see https://github.com/nvbn/thefuck/wiki/Shell-aliases
thefuck --alias | source
# nodenv
eval (nodenv init - | source)
