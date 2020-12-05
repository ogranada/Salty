
# Salty

A simple neovim configuration


## Requirements

```
npm install -g neovim
pip install neovim
pip3 install neovim pynvim
```

*Note:* Ruby support is disabled.

## Pre-installation

You need to install 
```bash
# You need to install virtualenv and virtualenvwrapper in your OS
pip install virtualenv virtualenvwrapper

# You can install extra fonts to use glyph icons in your shell
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```

## Instalation

```bash
# set environment variable $CURL_PATH pointing to curl app container
# set environment variable $NVIM_BASE pointing to target repo folder
# set environment variable $NVIM_PYTHON_LOG_FILE pointing to remote python plugin logfile path
# it could be ~/.config/nvim
# E.G.
export CURL_PATH=/usr/bin/curl
export NVIM_BASE=~/.config/nvim
export NVIM_PYTHON_LOG_FILE="$NVIM_BASE/python.log"


# For *nix use:
git clone https://github.com/ogranada/salty $NVIM_BASE
# For Windows use:
git clone https://github.com/ogranada/salty %NVIM_BASE%


# For windows copy the entry point file to default nvim init path
> mkdir C:\Users\<user>\AppData\Local\nvim\
> copy %NVIM_BASE%\init.vim C:\Users\<user>\AppData\Local\nvim\

# Finally run nvim
nvim

```
