" @file plugins-misc.vim
" @brief Miscellaneous other plugins.
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

"-------------------------------------------------------------------------------
" A: Alternate between .h and .cpp files quickly
"-------------------------------------------------------------------------------
Plugin 'vim-scripts/a.vim'

"-------------------------------------------------------------------------------
" DelimitMate: Provides the 'autoclose' functionality that many editors have for
" parens and brackets.
"-------------------------------------------------------------------------------
Plugin 'Raimondi/delimitMate'

" will close parens inside of quotes
let delimitMate_expand_inside_quotes = 1

" hitting enter and space inside of delimiters works more nicely
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

" turn off delimitMate for markdown, where the ``` gets really messy
augroup beziDelimitMate
    au!
    au FileType markdown let b:loaded_delimitMate = 1
augroup END

"-------------------------------------------------------------------------------
" GitGutter: If a file is in a git repository, shows a column on the side with
" diff information.
"-------------------------------------------------------------------------------
Plugin 'airblade/vim-gitgutter'

"-------------------------------------------------------------------------------
" Syntastic: Syntax checking on file save, it's a lifesaver for the small
" mistakes I make all the time.  Will alert me to mistakes before compilation.
"-------------------------------------------------------------------------------
Plugin 'scrooloose/syntastic'

" Nicer symbols in the gutter
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

" LaTeX warnings are very prolific, so it's not too helpful to have on all the
" time.
augroup beziSyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

"-------------------------------------------------------------------------------
" NERDTree: Shows a file-system tree in a sidebar.
"-------------------------------------------------------------------------------
Plugin 'scrooloose/nerdtree'

" Show hidden files, since I'm often editing dotfiles
let NERDTreeShowHidden = 1

"-------------------------------------------------------------------------------
" NERDTreeTabs: All this does it have NERDTree open by default whenever I open
" vim, so I can just run `vim` from the shell and then use NERDTree to find my
" files.
"-------------------------------------------------------------------------------
Plugin 'jistr/vim-nerdtree-tabs'

" Auto-enable
let g:nerdtree_tabs_open_on_console_startup = 1
"-------------------------------------------------------------------------------
" VimCommentary: Tim Pope presents: toggling comments on a given selection.
"-------------------------------------------------------------------------------
Plugin 'tpope/vim-commentary'

