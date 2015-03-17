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

" Syntastic
Plugin 'scrooloose/syntastic'

" NerdTREE
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Tagbar
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

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

" Hardmode to break some bad habits
Plugin 'takac/vim-hardtime'

call vundle#end()
filetype plugin indent on

" DelimitMate
" activate smarter delimiting
let delimitMate_expand_cr = 2
let delimitMate_expand_inside_quotes = 1
let delimitMate_expand_space = 1

augroup beziDelimitMate
    au!
    au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
augroup END

" Syntastic
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

augroup beziSyntastic
    au!
    au FileType tes let b:syntastic_mode = "passive"
augroup END

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
    \       'html': 0,
    \       'sml': {
    \           'parentheses': ['start=/(\(\*\)\@!/ end=/\(\*\)\@<!)/', 'start=/\[/ end=/\]/ fold']
    \       }
    \   }
    \}


" CTags stuff, jacked it from Jake (github.com/jez)
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

set tags=./.vimtags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" Hardtime customisation
let g:hardtime_default_on = 1
