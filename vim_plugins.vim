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

" Omnicomplete family
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'SirVer/ultisnips'

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
    \       'css': 0,
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

" Easytags config
let g:tagbar_type_tex = {
    \ 'ctagstype' : 'tex',
    \ 'kinds'     : [
        \ 's:sections',
        \ 'g:graphics:0:0',
        \ 'l:labels',
        \ 'r:refs:1:0',
        \ 'p:pagerefs:1:0'
    \ ],
    \ 'sort'    : 0,
\ }

" Hardtime customisation
let g:hardtime_default_on = 1

" Ultisnips
let g:UltiSnipsEditSplit="vertical"

" YouCompleteMe
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = { 'markdown': 1, 'tagbar': 1, 'tex': 1, 'nerdtree': 1 }

" SML for days
" SML signature files
au BufRead,BufNewFile *.sig setlocal filetype=sml
