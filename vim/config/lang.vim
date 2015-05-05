" @file lang.vim
" @brief Language-specific vim configurations.
" @details I have some options that are language specific, but not related to
" a specific plugin.  This is where they live.  Also check leader.vim for
" potential filetype-only configs.
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

"-------------------------------------------------------------------------------
" ARDUINO
"-------------------------------------------------------------------------------

augroup beziArduino
    au!

    " set Arduino to use C++ syntax hilighting
    au BufNewFile,BufReadPost *.ino set filetype=cpp
augroup END

"-------------------------------------------------------------------------------
" COFFEESCRIPT
"-------------------------------------------------------------------------------

augroup beziCoffee
    au!

    " Two space tabs
    au FileType coffee setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

"-------------------------------------------------------------------------------
" JAVASCRIPT
"-------------------------------------------------------------------------------

augroup beziJS
    au!

    " Two space tabs
    au FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

"-------------------------------------------------------------------------------
" SMLNJ
"-------------------------------------------------------------------------------

augroup beziSML
    au!

    " Turn on syntax hilighting for SML .sig files
    au BufRead,BufNewFile *.sig setlocal filetype=sml

    " Fix comment strings
    au FileType sml setlocal commentstring=(*%s*)

    " Two space tabs
    au FileType sml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END
