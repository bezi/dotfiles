" @file htmlclean.vim
" @brief Function that cleans up messy HTML from the wild
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================
function! HTMLCleanupFunction()
    " get rid of all newlines
    silent! normal ggVGgJ

    " split file on close tags
    silent! %s/>\s*</>\r</

    " get rid of extra whitespace
    silent! %s/\s\s*/ /

    " reindent
    silent! normal gg=G

    " return us to the top
    silent! gg
endfunction

command! HTMLCleanup call HTMLCleanupFunction()
