"+*****************+
"|  Vim-Plug core  |
"+*****************+
if has('vim_starting')
  set nocompatible               " Vi iMproved
endif

let plug_plugins_path = $NVIM_BASE . '/plugins'
let plug_path = expand($NVIM_BASE . '/autoload/plug.vim')
let vimplug_exists=filereadable(plug_path)

let CURL_BIN = 'curl.exe'
let g:python3_host_prog = "C:\\Python38\\python.exe"

if !has('win32')
  let CURL_BIN = 'curl'
  let g:python3_host_prog = "/usr/bin/python3"
endif

let curlPath=expand($CURL_PATH . $CURL_BIN)

let g:vim_bootstrap_langs = "javascript,typescript,python,html,css"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

" disable ruby provider
let g:loaded_ruby_provider = 0

" disable python2 provider
let g:loaded_python_provider = 0

if !vimplug_exists
  echo 'Package manager not installed...'
  echo ""
  echo "Installing Vim-Plug..."
  echo ""
  execute "!" . curlPath . " -fLo " . plug_path . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  execute "source " . plug_path
  let g:not_finish_vimplug = "yes"
else
  execute "source " . plug_path
endif
