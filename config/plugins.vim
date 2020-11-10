"+---------------------------------------+"
"|          PLUGINS INSTALATION          |"
"+---------------------------------------+"
    call plug#begin(plug_plugins_path)
" ----------------------------------------

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy Finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git Blame
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'APZelos/blamer.nvim'

" Yet another typescript syntax
Plug 'HerringtonDarkholme/yats.vim'
Plug 'posva/vim-vue'

" Status bar
Plug 'itchyny/lightline.vim'

" Web Development
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript','vue'], 
  \ 'do': 'make install'
\}

" Themes
Plug 'mhinz/vim-startify'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'arzg/vim-corvine'
Plug 'dracula/vim'
Plug 'flrnd/candid.vim'
Plug 'flrnd/plastic.vim'

" ----------------------------------------
    call plug#end()
"========================================="
