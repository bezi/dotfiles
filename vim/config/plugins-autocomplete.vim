" @file plugins-autocomplete.vim
" @brief Plugins related to autocompletion functions.
" @details At the moment, just has YouCompleteMe.  I'm looking to add other
" semantic engines like Tern for Javascript and Omnisharp for C#
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

"-------------------------------------------------------------------------------
" YouCompleteMe: Provides the autocomplete engine
"-------------------------------------------------------------------------------
Plugin 'Valloric/YouCompleteMe'

" default to autocomplete on
let g:ycm_filetype_whitelist = { '*': 1 }

" shouldn't autocomplete in documents and special buffers
let g:ycm_filetype_blacklist = {
\   'markdown': 1,
\   'tagbar': 1,
\   'tex': 1,
\   'nerdtree': 1
\}

" defer syntax checker to syntastic, while still providing identifier completion
" This is for c, cpp, objc types
let g:ycm_show_diagnostics_ui = 0
