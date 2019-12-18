let start_path = expand($NVIM_BASE . '/start.vim')
let plugins_path = expand($NVIM_BASE . '/plugins.vim')
let settings_path = expand($NVIM_BASE . '/settings.vim')
let keymaps_path = expand($NVIM_BASE . '/keymaps.vim')

if filereadable(start_path)
  execute "source " . start_path
endif

if filereadable(plugins_path)
  execute "source " . plugins_path
endif

if !exists('g:not_finish_vimplug')

  if filereadable(settings_path)
    execute "source " . settings_path
  endif

  if filereadable(keymaps_path)
    execute "source " . keymaps_path
  endif
else
  echo "Installing plugins..."
  autocmd VimEnter * PlugInstall
endif
