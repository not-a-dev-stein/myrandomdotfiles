" CONFIGURAÇÃO GERAL ---------------------- {{{

" Config. básica
filetype plugin indent on
syntax on
set mouse=a
set ruler
set number
set ignorecase
set smartcase
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set nobackup
set noswapfile
set encoding=UTF-8
set clipboard=unnamedplus

" Tema de cores
syntax enable
set termguicolors
set background=dark
colorscheme gruvbox-material

" Mapear ESPAÇO como a tecla <leader>
nnoremap <SPACE> <Nop>
let mapleader=" "

" Salvar arquivos de administrador sem rodar o nvim como sudo
cmap w!! w !sudo tee > /dev/null %

" Usar o j/k para pular linhas (incluindo linhas com wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Usar Ctrl+HJKL para navegar entre arquivos abertos em split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>



" PLUGINS --------------------------------- {{{

" Diretório onde os plugins ficarão salvos
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '.config/nvim/plugin')

" Lista de plugins
Plug 'preservim/nerdtree'
Plug 'sainnhe/gruvbox-material'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'jghauser/mkdir.nvim'

" Fim da lista de plugins
call plug#end()
lua require'colorizer'.setup()

" }}}

" CONFIGURAÇÕES DOS PLUGINS ---------------- {{{

" NERDTREE ---------------
" Abrir o NERDTree ao iniciar o Neovim
autocmd VimEnter * NERDTree | wincmd p

" Fechar o Neovim automaticamente se o NERDTree for a última aba aberta
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Keybindings do NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeMapOpenSplit = '<RightMouse>'

" Miscelânea do NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" }}}
