" @file base.vim
" @brief Basic vim modifications that don't really belong anywhere else.
" @author Oscar Bezi
" @since 5 May 2015
"===============================================================================

set background=dark

" Since the colorscheme is in a plugin, it may not always be there at first, so
" we put it into a try-catch
try
    " A nice dark color scheme that's easy on the eyes
    colorscheme molokai
catch
    " Don't do anything, just supress the 'colorscheme doesn't exist' error.
endtry

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

" mice are cool
if has('mouse')
    set mouse=a
endif

" removes modelines (because who knows what's in a file)
set modelines=0

" file encoding
set encoding=utf-8

" keeps a buffer above and below line when scrolling
set scrolloff=3

" smarter indenting
set autoindent

" show (partial) command in the last line of the screen
set showcmd

" improved command autocompletion
set wildmenu
set wildmode=list:longest

" instead of dinging, flash cursor
set visualbell

" hilight or underline cursor line, depending on your scheme
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

" text-wrapping
set wrap
set textwidth=80

" These are really nice options for handling text wrapping in comments
" see :help fo-table for what exactly they do
set formatoptions=qrn2tcoj

" save whenever you lose focus
augroup beziAutoSave
    au!
    au FocusLost * :wa <CR>
augroup END

" remap jj to escape for easier times
inoremap jj <ESC>

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
