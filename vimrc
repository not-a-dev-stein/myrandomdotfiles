" .vimrc do Archcraft ------------------------------------------- {{{
noh
syntax on
set t_Co=16
set nocompatible
set showmode
set showcmd
set expandtab
set noshiftround
set lazyredraw
set autoindent
set smartindent
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set formatoptions=tqn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cmdheight=1
set laststatus=2
set scrolloff=8
set backspace=indent,eol,start
set list
set listchars=tab:\│\ 
set matchpairs+=<:> 
"}}}

" Configuração própria ------------------------------------------ {{{
filetype on
filetype plugin on
filetype indent on
set mouse=a
set ruler
set number
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
colorscheme palenight
"}}}
