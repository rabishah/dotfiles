set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'isRuslan/vim-es6'
Plugin 'airblade/vim-gitgutter'
Plugin 'spolu/dwm.vim'

filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>

set nu
set noswapfile
set noerrorbells
set backspace=2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set cursorline    "higlight cursor position
set guifont=Source\ Code\ Pro\ Regular\ 12
set showmatch
set ignorecase
set smartcase
set hlsearch
set ruler
set incsearch
set mouse=a
set ttymouse=xterm2

syntax on
colorscheme Tomorrow-Night-Bright

" vertical, horizontal split
nnoremap ,v <C-w>v
nnoremap ,h <C-w>s

" Vim javascript folding
set foldmethod=indent
set foldlevelstart=99

let javascript_fold=1
let javascript_enable_domhtmlcss=1

" JSX syntax in .js file
let g:jsx_ext_required = 0

"to create a new line cmd mode without going to insert
" nmap <leader>k O<esc>k0
" nmap <leader>j o<esc>j0

"Break a line into two and retain cursor position
" nmap <leader>b i<cr><esc>k$

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-\> :NERDTreeToggle<CR>

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" split navigations
set splitbelow
set splitright
