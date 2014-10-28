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

" Hilight trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Improved markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" CTags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

" Syntastic
Plugin 'scrooloose/syntastic'

" HTML/XML autoclose tags
Plugin 'vim-scripts/HTML-AutoCloseTag'

" Syntax hilighting
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'ap/vim-css-color'
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
nmap <silent> <leader>. :CtrlPTag<CR>

" Tagbar
nmap <silent> <leader>b :TagbarToggle<CR>

" EasyTags
let g:easytags_events = ['BufReadPost', 'BufWritePost']

" Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" Ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'
