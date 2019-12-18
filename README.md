
# Salty

A simple neovim configuration


## Requirements

```
npm install -g neovim typescript javascript-typescript-langserver
pip install neovim
pip3 install neovim pynvim
```

*Note:* Ruby support is disabled.

## Instalation

```bash
# set environment variable $CURL_PATH pointing to curl app container
# set environment variable $NVIM_BASE pointing to target repo folder
# it could be ~/.config/nvim

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
