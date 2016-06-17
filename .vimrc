set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'isRuslan/vim-es6'
Plugin 'airblade/vim-gitgutter'
Plugin 'spolu/dwm.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'chun-yang/auto-pairs'
Plugin 'mhinz/vim-startify'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'posva/vim-vue'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()
filetype plugin indent on

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

" Colorscheme
colorscheme Tomorrow-Night-Bright

" Vim javascript folding
set foldmethod=indent
set foldlevelstart=99

let javascript_fold=1
let javascript_enable_domhtmlcss=1

" JSX syntax in .js file
let g:jsx_ext_required = 0

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

" ignore files listed in .gitignore for controlp
let g:ctrlp_user_command = {
  \ 'types': {
  \  1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
  \  2: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
  \ 'fallback': 'find %s -type f'
  \ }

" vim startify customization
autocmd User Startified setlocal cursorline

let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 1
let g:startify_update_oldfiles        = 1
let g:startify_session_autoload       = 1
let g:startify_session_persistence    = 1
let g:startify_session_delete_buffers = 1

let g:startify_list_order = [
  \ ['   recently used files:'],
  \ 'files',
  \ ['   recently used directories:'],
  \ 'dir',
  \ ['   sessions:'],
  \ 'sessions',
  \ ['   my bookmarks:'],
  \ 'bookmarks',
  \ ]

let g:startify_bookmarks = [
            \ { 'a': '~/.vimrc'  },
            \ { 'b': '~/.zshrc'  },
            \ { 'c': '~/.bashrc'  },
            \ { 'd': '~/.tmux.conf'  },
            \ { 'e': '~/.aliases'  },
            \ ]

let g:startify_custom_footer =
      \ ['', "   - @rabishah / c3p0.re", '']

let g:startify_custom_indices = ['f', 'g', 'h', 'i', 'j', 'k']

let g:ascii = [
      \ '        __',
      \ '.--.--.|__|.--------.',
      \ '|  |  ||  ||        |',
      \ ' \___/ |__||__|__|__|',
      \ '']

let g:startify_custom_header =
      \ 'map(g:ascii + startify#fortune#boxed(), "\"   \".v:val")'

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240

" remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
" autoformat on save
au BufWrite * :Autoformat
