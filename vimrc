" @file ~/.vimrc
" @author Oscar Bezi
" @since 5 June 2014
"===============================================================================

" Vundle and plugins
set nocompatible
filetype off

" change leader key
let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

" Airline
Plugin 'bling/vim-airline'

" Autocommenting
Plugin 'tpope/vim-commentary'

" Parens and brackets galore
Plugin 'Raimondi/delimitMate'

" Git gutter: Shows a gutter with git diff stuff
Plugin 'airblade/vim-gitgutter'

" Rainbow parentheses to help with that jazz
Plugin 'luochen1990/rainbow'

" Open files easily
Plugin 'kien/ctrlp.vim'

" Indent hilighting
Plugin 'Yggdroot/indentLine'

" Coffee-script support
Plugin 'kchmck/vim-coffee-script'

" Sweet sweet javascript
Plugin 'pangloss/vim-javascript'

" Jade syntax hilighting
Plugin 'digitaltoad/vim-jade'

" Hilights colours in CSS/Sass files
Plugin 'ap/vim-css-color'

" Hilight trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Improved markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Docker
Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()
filetype plugin indent on

" Plugin options
" Airline
" use fancy airline font
let g:airline_powerline_fonts = 1

" DelimitMate
" activate smarter delimiting
let delimitMate_expand_cr = 1

" Rainbow
" activate rainbow parens
let g:rainbow_active = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" Trailing whitespace
nmap <silent> <leader>w :StripWhitespace<CR> :w<CR>

"color scheme
let g:hybrid_use_Xresources=1
colorscheme hybrid

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

"edit and source vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" set Arduino to use C++ syntax hilighting
autocmd BufNewFile,BufReadPost *.ino set filetype=cpp

" removes modelines (best practices, they're apparently a security exploit)
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

" instead of dinging, flash cursor
set visualbell

" underline cursor line
set cursorline

" smoother performance since we use modern terminals
set ttyfast

" show cursor location in the bottom
set ruler

" make backspace act more sanely with tabs
set backspace=indent,eol,start

" always show file status
set laststatus=2

" change line numbering to be relative to current line, to make commands easier
set relativenumber


" make searching more intuitive by turning off special characters (/&ref
" searches for &ref)
noremap / /\v
vnoremap / /\v

" smarter search defaults
set ignorecase
" case insensitive unless there's varied casing, then it's case sensitive
set smartcase 

" automatically overwrite all instances on s//.  To get previous behaviour, use
"   s//g
set gdefault

" hilight as you type search
set incsearch
set showmatch
set hlsearch

" clear out hilighting from search
noremap <leader><space> :noh<cr>

" make the bracket move easier to hit (move from opening to closing braces, etc)
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
" if you hit j, it goes down a visual line, not a logical line
noremap j gj
noremap k gk

" save whenever you lose focus
au FocusLost * :wa

" hard rewrap paragraphs on ,q
noremap <leader>q gqip

" remap jj to escape for easier times
inoremap jj <ESC>

" navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" split by default to the right
set splitright

" Turn off extra back up files.  I find them to be annoying and I save enough
" that they're more of a nuisance when recovering from a crash than anything
" else

" don't use swap files
set noswapfile

" don't use backup files (a.c~)
set nobackup

" remap 0 to first non-empty character
map 0 ^
