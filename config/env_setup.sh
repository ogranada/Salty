#!/bin/bash
source /usr/local/bin/virtualenvwrapper.sh

if ! command -v python2 &> /dev/null
then
    echo "Avoiding to prepare Python2 Env."
else
  if [ ! -d "$1/py2env" ]; then
    mkvirtualenv py2env -p python2
    workon py2env
    pip2 install neovim
  fi
fi


if [ ! -d "$1/py3env" ]; then
  mkvirtualenv py3env -p python3
  workon py3env
  pip3 install neovim pynvim
fi
