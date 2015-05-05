" @file latexmk.vim
" @brief Functions that make and pull up the PDF viewer for LaTeX in UNIX.  I
" didn't go full hog with the massive vim-latex plugin, this fills my needs
" admirably.
" @author Oscar Bezi, oscar@bezi.io
" @brief 5 May 2015
"===============================================================================
function! LatexMakeFunction()
    silent !clear

    " go to the file, check if there's a makefile and run make, or just run
    " pdflatex
    !cd %:h && if [-f Makefile ]; then make; else pdflatex %; fi

endfunction

command! LatexMake call LatexMakeFunction()

function! LatexViewFunction()
    " pull up evince and pipe errors to /dev/null since it generates a ton of
    " messages
    silent !evince %:r.pdf 2>/dev/null &

endfunction

command! LatexView call LatexViewFunction()
