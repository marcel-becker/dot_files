syntax on

" indentation related and coding style
set tabstop=2       " The width of a TAB is set to 2.
set expandtab       " Expand TABs to spaces
set softtabstop=2
set shiftwidth=2    " when indenting with '>', use 2 spaces width
set autoindent

" display related stuff
set relativenumber
set number
colorscheme wombat256mod
set foldenable
set colorcolumn=80
set cursorline

" search related
set hlsearch
set ignorecase
set smartcase
set incsearch

" misc
set hidden              " Hide buffers when they are abandoned
set wildmenu
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.

set nocompatible              " be iMproved, required
filetype off                  " required

set tags=./tags;/      " search for tags in pwd and go up until found
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR> " open tag in vsplit

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'gkz/vim-ls'
Plugin 'elixir-editors/vim-elixir'
Plugin 'dracula/vim'

call vundle#end()            " required
filetype plugin indent on    " required
set laststatus=2

set guifont=Liberation_Mono_for_Powerline:h10
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" custom mapping
command Fo execute "normal! $zf%" " fold line by doing a :Fo
nnoremap <leader><tab> :tabn<cr>
nnoremap <leader>n     :noh<cr>
