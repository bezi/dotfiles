" @file ~/.vimrc
" @author Oscar Bezi
" @since 5 June 2014
"===============================================================================

" Vundle and plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'Shougo/unite.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts=1
" line numbering
set nu

" set spacing to use spaces, not tabs, 4 spaces per indent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" 256 terminal colors to be supa pretty
set t_Co=256

" put a line at column 81
set cc=81

" syntax hilighting
syntax enable

" set Arduino to use C++ syntax hilighting
autocmd BufNewFile,BufReadPost *.ino, *.pde set filetype=cpp

" removes modelines security exploits
set modelines=0

" file encoding
set encoding=utf-8

" keeps a buffer above and below line when scrolling
set scrolloff=3

" smarter indenting
set autoindent

" airline tells us what mode we're in
set noshowmode

" show commands while you're typing
set showcmd

" improved command autocompletion
set wildmenu
set wildmode=list:longest

" instead of dinging, flash
set visualbell

" underline cursor line
set cursorline

" smoother performance
set ttyfast

" show cursor location
set ruler

" make backspace act more sanely
set backspace=indent,eol,start

" always show file status
set laststatus=2

" change line numbering to be relative to current line, to make commands easier
set relativenumber

" change leader key
let mapleader = ","

" make searching more intuitive
noremap / /\v
vnoremap / /\v

" smarter search defaults
set ignorecase
set smartcase

" automatically overwrite all instances on s//.  To get previous behaviour, use
"   s//g
set gdefault

" hilight as you type search
set incsearch
set showmatch
set hlsearch

" Unite.vim remap
noremap <leader>f :Unite file<cr>
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" clear out hilighting
noremap <leader><space> :noh<cr>

" make the bracket move easier to hit
noremap <tab> %
vnoremap <tab> %

" text-wrapping
set wrap
set textwidth=80

" see :help fo-table
set formatoptions=qrn1

" noob tools: make for better navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <ESC> <nop>

" make the j and k work better with wrapped text
noremap j gj
noremap k gk

" save whenever you lose focus
au FocusLost * :wa

" hard rewrap paragraphs
noremap <leader>q gqip

" remap jj to escape for easier times
inoremap jj <ESC>

" navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
