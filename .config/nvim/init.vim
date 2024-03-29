" --- General settings

syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=5
set signcolumn=number
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set splitbelow
set splitright
set hidden
set scrolloff=8
set noshowmode
set updatetime=250
set encoding=UTF-8
set mouse=a

"--- Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'sainnhe/gruvbox-material'

call plug#end()

"--- Colors
set background=dark
set termguicolors
colorscheme gruvbox=material


