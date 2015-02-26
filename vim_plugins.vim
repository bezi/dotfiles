" @file ~/.vim_plugins.vim
" @brief Specification of my plugins for Vim
" @author Oscar Bezi
" @since 28 October 2014
"===============================================================================

" Vundle and plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

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

" Hilight trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Improved markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Super pane navigation
Plugin 'christoomey/vim-tmux-navigator'

" NerdTREE
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Syntax hilighting
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'ap/vim-css-color'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'Keithbsmiley/tmux.vim'
Plugin 'cypok/vim-sml'

" Colors galore
Plugin 'tomasr/molokai'
Plugin 'idbrii/vim-sandydune'

call vundle#end()
filetype plugin indent on

" DelimitMate
" activate smarter delimiting
let delimitMate_expand_cr = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" NERDTree
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

let g:nerdtree_tabs_open_on_console_startup = 1

" Indent hilighting for some reason causes a bug with latex
let g:indentLine_fileTypeExclude = ['tex']
au Filetype tex setlocal conceallevel=0

" Rainbow
" activate rainbow parens
let g:rainbow_active = 1

let g:rainbow_conf = {
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\(/ end=/\)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'html': 0,
    \       'sml': {
    \           'parentheses': ['start=/(\(\*\)\@!/ end=/\(\*\)\@<!)/', 'start=/\[/ end=/\]/ fold']
    \       }
    \   }
    \}
