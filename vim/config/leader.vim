" @file leader.vim
" @brief Shortcuts that have been mapped to leader key.
" @details Every shortcut I've mapped to a leader key, including those in
" a plugin, should live in here.  If a mapping is plugin specific, that should
" be noted.
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

" set the leader key
let mapleader = ","

" clear hilighting from search
nmap <leader><space> :noh<cr>

" Toggle the sidebar for the plugin NERDTree
nmap <silent> <leader>t :NERDTreeTabsToggle<cr>

" Toggle the sidebar for the plugin tagbar
nmap <silent> <leader>b :TagbarToggle<cr>

" First, clear trailing whitespace from all lines using the better-whitespace
" plugin.  Then, remove all repeated newlines in a file.
" TODO: make this smarter in python files so it doesn't break pep8
nmap <silent> <leader>w :StripWhitespace<cr> :%s/\n\{3,}/\r\r/e<cr> :w<cr>

" Latex build and make, they're in plugin/latexmk.vim
augroup beziLatexLeader
    au!
    au FileType tex nmap <buffer> <silent> <leader>m :LatexMake<cr>
    au FileType tex nmap <buffer> <silent> <leader>v :LatexView<cr>
augroup END
