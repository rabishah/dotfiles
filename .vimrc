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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'posva/vim-vue'
Plugin 'Chiel92/vim-autoformat'
Plugin 'chun-yang/auto-pairs'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set nu
set noswapfile
set noerrorbells

" tabs and indentations
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set autoindent
set copyindent
set backspace=indent,eol,start

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" cursor and scroll
set cursorline    "higlight cursor position
set scrolloff=3   "show atleast 3 lines above/below cursor while scrolling
set ruler

" searching / moving
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set gdefault  "substitutions globally on lines

" long lines
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=95  too appealing for current theme and color

set showmode
set showcmd       "no of lines selected
set hidden        "keep invisible buffers loaded
set wildmenu      "command line completion
set wildmode=list:longest   "in command line completion, first tab for list, second for longest
set ttyfast
set visualbell
set laststatus=2
set relativenumber
set undofile

set guifont=Source\ Code\ Pro\ Regular\ 12
set mouse=a
set ttymouse=xterm2

" split navigations
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

syntax on

" color scheme
colorscheme Tomorrow-Night-Bright

" doing it vim way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" training my finger
inoremap jj <esc>
inoremap <esc> <nop>

" save efficiently
nnoremap ; :

" insert newline without entering insert mode
nmap <S-Enter> Ojj
nmap <CR> ojj

" leader key
let mapleader = "\<Space>"

" colorscheme
noremap <leader>1 :colorscheme delek<cr>
noremap <leader>2 :colorscheme tomorrow-night-bright<cr>
noremap <leader>3 :colorscheme slate<cr>
noremap <leader>4 :colorscheme badwolf<cr>

" visual mode
" nmap <Leader><Leader> V

" open a new file
nnoremap <Leader>o :CtrlP<CR>
" save a file
nnoremap <Leader>w :w<CR>
" quit vim
nnoremap <Leader>q :wq<CR>

" vimrc
" source vimrc upon save (takes a lot of time!)
" autocmd bufwritepost .vimrc source $MYVIMRC
" open vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" source vimrc and exit
nnoremap <leader>sv :source $MYVIMRC<cr>

" reselect the text that was just pasted
nnoremap <leader>v V`]

" open a new vertical split and switch over to it
nnoremap <leader>vs <C-w>v<C-w>l
" delete a line
nnoremap <leader>d dd
" clear all highlights
nnoremap <leader><leader> :noh<cr>

" comment lines
vnoremap <leader>/ :TComment<Enter>
nnoremap <leader>/ :TComment<Enter>

" swap lines
nnoremap <leader>sj ^ddp
nnoremap <leader>sk ^ddkP

" copy and paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" find and replace
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>


" Inspired by Steve Losh's tutorial (http://learnvimscriptthehardway.stevelosh.com/chapters/09.html);
" https://github.com/wilmoore/dotfiles/blob/master/active/.vim/vimrc.d/keybindings.vim
" example.com => "example.com"
:no <leader><leader>" gEwi"<esc>Ea"<esc>B
:no <leader>" gEwi"<esc>ea"<esc>B
:vn <leader>" "1c"<esc>"1pa"<esc>B


" example.com => 'example.com'
:no <leader><leader>' gEwi'<esc>Ea'<esc>B
:no <leader>' gEwi'<esc>ea'<esc>B
:vn <leader>' "1c'<esc>"1pa'<esc>B

" example.com => `example.com`
:no <leader><leader>` gEwi`<esc>Ea`<esc>B
:no <leader>` gEwi`<esc>ea`<esc>B
:vn <leader>` "1c`<esc>"1pa`<esc>B

" example.com => *example.com*
:no <leader><leader>* gEwi*<esc>Ea*<esc>B
:no <leader>* gEwi*<esc>ea*<esc>B
:vn <leader>* "1c*<esc>"1pa*<esc>B

" example.com => _example.com_
:no <leader><leader>_ gEwi_<esc>Ea_<esc>B
:no <leader>_ gEwi_<esc>ea_<esc>B
:vn <leader>_ "1c_<esc>"1pa_<esc>B

" example.com => {example.com}
:no <leader><leader>{ gEwi{<esc>Ea}<esc>B
:no <leader>{ gEwi{<esc>ea}<esc>B
:vn <leader>{ "1c{<esc>"1pa}<esc>B

:no <leader><leader>} gEwi{<esc>Ea}<esc>B
:no <leader>} gEwi{<esc>ea}<esc>B
:vn <leader>} "1c{<esc>"1pa}<esc>B

" example.com => example.com
:no <leader><leader>[ gEwi[<esc>Ea]<esc>B
:no <leader>[ gEwi[<esc>ea]<esc>B
:vn <leader>[ "1c[<esc>"1pa]<esc>B

:no <leader><leader>] gEwi[<esc>Ea]<esc>B
:no <leader>] gEwi[<esc>ea]<esc>B
:vn <leader>] "1c[<esc>"1pa]<esc>B

" 3+3 => #{3+3}
" user.name => #{user.name}
" user_name => #{user_name}
:no <leader><leader># gEwi#{<esc>Ea}<esc>B
:no <leader># gEwi#{<esc>ea}<esc>B
" 3 + 3 => #{3 + 3}
:vn <leader># "1c#{<esc>"1pa}<esc>B

" example.com => (example.com)
:no <leader><leader>( gEwi(<esc>Ea)<esc>B
:no <leader>( gEwi(<esc>ea)<esc>B
:vn <leader>( "1c(<esc>"1pa)<esc>B

:no <leader><leader>) gEwi(<esc>Ea)<esc>B
:no <leader>) gEwi(<esc>ea)<esc>B
:vn <leader>) "1c(<esc>"1pa)<esc>B

" example.com => <example.com>
:no <leader><leader>< gEwi<<esc>Ea><esc>B
:no <leader>< gEwi<<esc>ea><esc>B
:vn <leader>< "1c<<esc>"1pa><esc>B

:no <leader><leader>> gEwi<<esc>Ea><esc>B
:no <leader>> gEwi<<esc>ea><esc>B
:vn <leader>> "1c<<esc>"1pa><esc>B

" vim javascript folding
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

" ignore files listed in .gitignore for controlp
let g:ctrlp_user_command = {
      \ 'types': {
      \  1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
      \  2: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
      \ 'fallback': 'find %s -type f'
      \ }

" remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
" autoformat on save
" au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>

" neocomplete
" -------------

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'')'

" neo snippets
" -------------

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
