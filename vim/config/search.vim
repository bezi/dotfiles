" @file base.vim
" @brief Base modifications that don't really fit anywhere else.
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

" smarter search defaults
set ignorecase

" case insensitive search unless there's varied casing, then it's case sensitive
set smartcase

" automatically overwrite all instances on s//.  To get previous behaviour, use
"   s//g
set gdefault

" hilight as you type search
set incsearch
set showmatch
set hlsearch

" centering macros to make searching a pleasure
nmap n nzz
nmap N Nzz
