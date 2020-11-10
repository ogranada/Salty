" +------------------+
" |     Vim core     |
" +------------------+
if has('vim_starting')
  set nocompatible    " Enable Vi iMproved functionalities
endif

" +-----------------+
" |   Vim Plugins   |
" +-----------------+

let virtualenvironments = '~/.virtualenvs'
let plug_plugins_path = $NVIM_BASE . '/target/plugins'
let plug_path = expand($NVIM_BASE . '/target/autoload/plug.vim')
let vimplug_exists=filereadable(plug_path)

let CURL_BIN = 'curl.exe'
let g:python3_host_prog = "python.exe"
let g:python_host_prog = "python.exe"

if !has('win32')
  let CURL_BIN = 'curl'
  let g:python3_host_prog = virtualenvironments . "/py3env/bin/python"
  let g:python_host_prog = virtualenvironments . "/py2env/bin/python"
endif

let curlPath=expand($CURL_PATH . $CURL_BIN)

" disable ruby provider
let g:loaded_ruby_provider = 0

" disable python2 provider
let g:loaded_python_provider = 0

" Checking Vim plugin manager

if !vimplug_exists
  echo 'Preparing workspaces...'
  exec '!bash ' . $NVIM_BASE . '/config/env_setup.sh ' . virtualenvironments
  echo 'DONE'
endif

if !vimplug_exists
  echo 'Package manager not installed...'
  echo ""
  echo "Installing Vim-Plug..."
  echo ""
  execute "!" . curlPath . " -fLo " . plug_path . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  echo ' - Installed at ' . plug_path
  execute "source " . plug_path
  let g:not_finish_vimplug = "yes"
else
  execute "source " . plug_path
endif
