
"========================================="
"=          PLUGINS INSTALATION          ="
"========================================="
call plug#begin(plug_plugins_path)
" ----------------------------------------

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'jcartledge/git-blame-nvim'

Plug 'neomake/neomake'


Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'

" Web Development
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

" Utils
Plug 't9md/vim-choosewin'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deol.nvim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'


" Visual Settings
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'arzg/vim-corvine'
Plug 'dracula/vim'
Plug 'flrnd/candid.vim'
Plug 'flrnd/plastic.vim'
Plug 'Mcmartelle/vim-monokai-bold'
Plug 'sainnhe/neon'

" ----------------------------------------
call plug#end()
"========================================="
