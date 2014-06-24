" @file ~/.vimrc
" @author Oscar Bezi
" @since 5 June 2014
"===============================================================================

" pathogen
execute pathogen#infect()
filetype plugin indent on

" line numbering
set nu

" set spacing to use spaces, not tabs, 4 spaces per indent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" turn on mouse control
" set mouse=a
" Commented to force me to not use mouse

" put a line at column 81
set cc=81

" syntax hilighting
syntax enable

" better folding
set foldmethod=syntax

" set Arduino to use C++ syntax hilighting
autocmd BufNewFile,BufReadPost *.ino, *.pde set filetype=cpp

" Coming Home To Vim Additions
"===============================================================================
" removes vi compatability
set nocompatible

" removes modelines security exploits 
set modelines=0

" file encoding
set encoding=utf-8

" keeps a buffer above and below line when scrolling
set scrolloff=3

" smarter indenting
set autoindent

" always show what mode we're in
set showmode

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

" make the j and k work better with wrapped text
noremap j gj
noremap k gk

" save whenever you lose focus
au FocusLost * :wa

" leader commands

" strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" sort CSS properties
noremap <leader>S ?{<CR>jW/^\s*\}?<CR>k:sort<CR>:noh<CR>

" hard rewrap paragraphs
noremap <leader>q gqip

" reselect recently pasted text
noremap <leader>v V`]

" remap jj to escape for easier times
inoremap jj <ESC>

" shortcut for vertical split
nnoremap <leader>w <C-w>v<C-w>l

" navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
