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
