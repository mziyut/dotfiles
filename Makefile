NOCOLOR		= \033[0m
RED			= \033[0;31m
GREEN		= \033[0;32m
BREWFILE	= ~/Workspace/github.com/mziyut/dotfiles/Brewfile
TMUX_TMP	= ~/.tmux/plugins/tpm

all: help

setup: create_symlink setup_brew install_brew setup_tmux setup_nvim

help:
	@echo "mziyut dotfiles"
	@echo "================"
	@echo "make create_symlink		- create symbolic link from dotfiles repository"
	@echo "make create_vim_dict		- create vim dictionary (not nvim support)"
	@echo "make install_brew		- brew install according to the brewfile definition"
	@echo "make install_pip3		- require machine learning library python3"
	@echo "make setup_brew			- brew setup"
	@echo "make setup_tmux			- tmux plugin download"
	@echo "make setup_nvim			- neovim require ruby, node, python3 library install"

create_symlink:
	@echo "${GREEN}=> [vim] ~/.vimrc, ~/.vim${NOCOLOR}"
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.vimrc ~/.vimrc
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.vim ~/.vim
	@echo "${GREEN}=> [nvim] ~/.config/nvim${NOCOLOR}"
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.config/nvim ~/.config/nvim
	@echo "${GREEN}=> [tmux] ~/.tmux.conf${NOCOLOR}"
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.tmux.conf ~/.tmux.conf
	@echo "${GREEN}=> [git] ~/.gitignore, ~/.gitconfig${NOCOLOR}"
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.gitignore ~/.gitignore
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.gitconfig ~/.gitconfig
	@echo "${GREEN}=> [zsh] ~/.zshrc, ~/.zsh${NOCOLOR}"
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.zshrc ~/.zshrc
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.zsh ~/.zsh
	@echo "${GREEN}=> [gem] ~/.gemrc, ~/.bundle${NOCOLOR}"
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.gemrc ~/.gemrc
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.bundle ~/.bundle
	@echo "${GREEN}=> [golang] ~/.go${NOCOLOR}"
	ln -sfn ~/Workspace ~/.go
	@echo "${GREEN}=> [php] ~/.composer${NOCOLOR}"
	ln -sfn ~/Workspace/github.com/mziyut/dotfiles/.composer ~/.composer

create_vim_dict:
	ruby ~/.vim/bin/make_ruby_dict.rb  > ~/.vim/dict/ruby.dict
	vim +PhpMakeDict &

install_brew:
	brew bundle install --file $(BREWFILE)

install_pip3:
	pip3 install numpy scipy matplotlib pandas scikit-learn chainer jupyter

setup_brew:
	@echo "${GREEN}=> Brew command not install.${NOCOLOR}"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

setup_tmux:
	@echo "${GREEN}Install tmux tmp plugin ...${NOCOLOR}"
	/bin/sh -c "git clone https://github.com/tmux-plugins/tpm ${TMUX_TMP}"

setup_nvim:
	pip3 install --user pynvim
	gem install neovim
	npm install --global neovim
