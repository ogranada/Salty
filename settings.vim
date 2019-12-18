"+*********************+
"|       PLUGINS       |
"+---------------------+
"|     Hdr PLUGINS     |
"+*********************+



"+***********************+
"|      General Cnf      |
"+-----------------------+

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

set cursorline " To highlight cursor line

"" Fix backspace indent
set backspace=indent,eol,start

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

" Set paste mode with F2
set pastetoggle=<F2>
set clipboard=unnamed
set backspace=2
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
"+***********************+



"+*********************+
"|       Airline       |
"+---------------------+

" Choose a theme

let g:lightline = {
\   'colorscheme': 'wombat',
\   'active': {
\     'left': [ [ 'mode', 'paste' ],
\     [ 'readonly', 'gfbranch', 'filename', 'modified' ] ]
\   },
\   'component_function': {
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

" disable "-- INSERT --"
set noshowmode

"+---------------------+
"|     End Airline     |
"+*********************+


"+***********************+
"|      Git Changes      |
"+-----------------------+

set updatetime=100
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '!'

"+-----------------------+
"|    End Git Changes    |
"+***********************+


"+***********************+
"|      Win Chooser      |
"+-----------------------+

nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

"+-----------------------+
"|    End Win Chooser    |
"+***********************+


"+*********************+
"|       Neomake       |
"+---------------------+

autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

"+---------------------+
"|     End Neomake     |
"+*********************+


"+***********************+
"|        Deoplete       |
"+-----------------------+

let g:deoplete#enable_at_startup = 1

"+-----------------------+
"|      End Deoplete     |
"+***********************+


"+**********************+
"|       NERDTree       |
"+----------------------+

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', 'node_modules']
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

"+----------------------+
"|     End NERDTree     |
"+**********************+


"+*********************+
"|       Cursors       |
"+---------------------+

"*  https://github.com/terryma/vim-multiple-cursors

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"+---------------------+
"|     End Cursors     |
"+*********************+


"+**********************+
"|     Session Mgmt     |
"+----------------------+

let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:session_directory = expand('~/.sessions')

"+----------------------+
"|   End Session Mgmt   |
"+**********************+


"+**********************+
"|     EditorConfig     |
"+----------------------+

set updatetime=100
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '!'

"+----------------------+
"|   End EditorConfig   |
"+**********************+


"+*********************+
"|       Themes        |
"+---------------------+

" colorscheme onedark
" colorscheme corvine_light
" colorscheme dracula
colorscheme monokai-bold

"+---------------------+
"|     End Themes      |
"+*********************+
