# dotfiles

## Setup

```sh
mkdir -p ~/Workspace/github.com/mziyut
mkdir ~/.config
```

Download dotfiles repository

```sh
gh repo clone mziyut/dotfiles
```

[vim-plug - Installation](https://github.com/junegunn/vim-plug#installation)

### config files

```
make create_symlink
```

### Brew

```sh
make install_brew
# or
make install_brew_work
```

### nvim

#### Library

```sh
make setup_nvim
make create_vim_dict
```

#### Browser extensions

- [browser-source-provider - Chrome Web Store](https://chrome.google.com/webstore/detail/browser-source-provider/lkaldcfmhailjfcbapicgkdkkamanlml?utm_source=chrome-ntp-icon)
