" nnoremap => No recursive Map (no expand new expressions if are mapped previously)
" map! => map to insert and command mode
" imap => map to insert mode
" cmap => map to command mode
" vmap => map to visual mode
" More info here: https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)

"+-----------------------+
"|      General Cnf      |
"+-----------------------+

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

set cursorline " To highlight cursor line

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
" set shell=/bin/sh ????? no se que pasa en windows


"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

set title
set titleold="Terminal"
set titlestring=%F

syntax on
set ruler
set number
filetype plugin indent on
nnoremap <leader>r :set relativenumber!<cr>
set mouse=a
set splitbelow
set splitright

" Set paste mode with F2
set pastetoggle=<F2>
set clipboard=unnamed
set backspace=2
"" Fix backspace indent
set backspace=indent,eol,start

" Tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

set guifont=Fira\ Code\ Retina:h12

"+-----------------------+
"|    End General Cnf    |
"+-----------------------+


"+-----------------------+
"|        CoC Cnf        |
"+-----------------------+

let coc_settings_path = expand($NVIM_BASE . '/config/settings_coc.vim')
execute "source " . coc_settings_path

"+-----------------------+
"|    End General Cnf    |
"+-----------------------+


"+---------------------+
"|      Lightline      |
"+---------------------+

" Choose a theme

let g:lightline = {
\   'colorscheme': 'wombat',
\   'active': {
\     'left': [ [ 'mode', 'paste' ],
\     [ 'readonly', 'gfbranch', 'cocstatus', 'filename', 'modified' ] ]
\   },
\   'component_function': {
\     'cocstatus': 'CocStatusDiagnostic',
\     'gfbranch': 'LightlineFugitive',
\     'gitbranch': 'fugitive#head',
\   },
\   'separator': { 'left': '', 'right': '' },
\   'subseparator': { 'left': '', 'right': '' }
\ }

let g:lightline.colorscheme = 'seoul256'

function! LightlineReadonly()
  if has('gui_running')
    return &readonly ? '#' : ''
  else
    return &readonly ? '' : ''
  endif
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! CocStatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '✓' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

" disable "-- INSERT --"
set noshowmode

"+---------------------+
"|    End Lightline    |
"+---------------------+



"+-----------------------+
"|      Win Chooser      |
"+-----------------------+

nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

"+-----------------------+
"|    End Win Chooser    |
"+-----------------------+


"+----------------------+
"|         GIT          |
"+----------------------+
let g:blamer_enabled = 1
let g:blamer_delay = 500
"+---------------------+
"|       End Git       |
"+---------------------+

"+----------------------+
"|    File Explorer     |
"+----------------------+

" toggle file explorer
map <F3> :CocCommand explorer<CR>
nmap ,t :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" open nerdtree with the current file selected
" nmap ,t :NERDTreeFind<CR>

"+---------------------+
"|     End File Ex     |
"+---------------------+


"+-----------------------+
"|           Fzf         |
"+-----------------------+

if executable('fzf')
  " FZF {{{
  " <C-p> or <C-t> to search files
  nnoremap <silent> <C-t> :GFiles -m<cr>
  nnoremap <silent> <C-p> :GFiles<cr>

  nnoremap <C-g> :Rg<Cr>

  " <M-p> for open buffers
  nnoremap <silent> <M-p> :Buffers<cr>

  " <M-S-p> for MRU
  nnoremap <silent> <M-S-p> :History<cr>

  " Use fuzzy completion relative filepaths across directory
  imap <expr> <c-x><c-f> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')

  " Better command history with q:
  command! CmdHist call fzf#vim#command_history({'right': '40'})
  nnoremap q: :CmdHist<CR>

  " Better search history
  command! QHist call fzf#vim#search_history({'right': '40'})
  nnoremap q/ :QHist<CR>

  command! -bang -nargs=* Ack call fzf#vim#ag(<q-args>, {'down': '40%', 'options': --no-color'})
  " }}}
else
  " CtrlP fallback
end

"+-----------------------+
"|         End Fzf       |
"+-----------------------+

"+----------------------+
"|     Session Mgmt     |
"+----------------------+

let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:session_directory = expand('~/.sessions')

"+----------------------+
"|   End Session Mgmt   |
"+----------------------+


"+----------------------+
"|     EditorConfig     |
"+----------------------+

set updatetime=100
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '!'

"+----------------------+
"|   End EditorConfig   |
"+----------------------+



"+-----------------------+
"|         JSDoc         |
"+-----------------------+
nnoremap <silent> <C-d> :JsDoc<cr>
"+-----------------------+
"|       End JSDoc       |
"+-----------------------+


"+---------------------+
"|       Themes        |
"+---------------------+

" colorscheme corvine_light
" colorscheme dracula
colorscheme onedark
colorscheme seoul256

"+---------------------+
"|     End Themes      |
"+---------------------+

"+---------------------+
"|      Startify       |
"+---------------------+

" 
let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]


let g:startify_custom_header = [
        \ '                                                                               ',
        \ '                                                                               ',
        \ '                                                                               ',
        \ '   ##########              ######                ######                        ',
        \ '   #        #                #      ##########                       ##########',
        \ '           #    ##       ##########         #  ##########   ##               # ',
        \ '          #    #  ##         #             #   #        #  #  ##            #  ',
        \ '         #    #     ##       #          # #           ##  #     ##       # #   ',
        \ '       ##             ##     #           #          ##            ##      #    ',
        \ '     ##                       ####        #       ##                       #   ',
        \ '                                                                               ',
        \ '                                                                               ',
        \]


"+---------------------+
"|    End Startify     |
"+---------------------+

"+---------------------+
"|       Terminal      |
"+---------------------+

nnoremap <leader><C-t> <ESC>:25spl\|terminal<CR>i

"+---------------------+
"|    End Terminal     |
"+---------------------+
