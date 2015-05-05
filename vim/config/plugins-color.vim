" @file plugins-color.vim
" @brief Plugins for syntax hilighting, color schemes, and other miscellaneous
" small visual things.
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

"-------------------------------------------------------------------------------
" Syntax files for a bunch of languages
"-------------------------------------------------------------------------------
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'ap/vim-css-color'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'Keithbsmiley/tmux.vim'
Plugin 'cypok/vim-sml'

"-------------------------------------------------------------------------------
" Molokai: a nice color scheme
"-------------------------------------------------------------------------------
Plugin 'tomasr/molokai'

"-------------------------------------------------------------------------------
" IndentLine: shows bars at each indent level, which helps keep them straight,
" especially useful in languages with functional whitespace like Python
"-------------------------------------------------------------------------------
Plugin 'Yggdroot/indentLine'

" a nicer character, this is the one used in Sublime
let g:indentLine_char = '┊'

" indentLine hides LaTeX math delimiters for some reason.
augroup beziIndentLine
    au!
    au Filetype tex setlocal conceallevel=0
augroup END

"-------------------------------------------------------------------------------
" BetterWhitespace: hilights trailing whitespace, as well as double newlines.
" Also provides the StripWhitespace command I use elsewhere to clean up files.
"-------------------------------------------------------------------------------
Plugin 'ntpeters/vim-better-whitespace'

"-------------------------------------------------------------------------------
" Rainbow: Implements 'rainbow parentheses', where matching parens get different
" colors, to help track down mismatched parens.  No helpfile :(
"-------------------------------------------------------------------------------
Plugin 'luochen1990/rainbow'

" turn on rainbow parens by default
let g:rainbow_active = 1

" disable in html (it messes up the syntax hilighting) and CSS, and fix the
" parens in SML (where the (* comments *) freak out).
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
