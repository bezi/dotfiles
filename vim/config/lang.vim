" @file lang.vim
" @brief Language-specific vim configurations.
" @details I have some options that are language specific, but not related to
" a specific plugin.  This is where they live.
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
" SMLNJ
"-------------------------------------------------------------------------------

augroup beziSML
    au!

    " Turn on syntax hilighting for SML .sig files
    au BufRead,BufNewFile *.sig setlocal filetype=sml
augroup END
