" @file ~/.vimrc
" @author Oscar Bezi
" @since 5 June 2014
"===============================================================================

" line numbering
set nu

" set spacing to use spaces, not tabs, 4 spaces per indent
set softtabstop=4 shiftwidth=4 expandtab

" turn on mouse control
set mouse=a

" put a line at column 81
set cc=81

" syntax hilighting
syntax enable

" better folding
set foldmethod=syntax

" set Arduino to use C++ syntax hilighting
autocmd BufNewFile,BufReadPost *.ino, *.pde set filetype=cpp

" pathogen
execute pathogen#infect()
