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
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" Toggle the sidebar for the plugin tagbar
nmap <silent> <leader>b :TagbarToggle<CR>

" First, clear trailing whitespace from all lines using the better-whitespace
" plugin.  Then, remove all repeated newlines in a file.
" TODO: make this smarter in python files so it doesn't break pep8
nmap <silent> <leader>w :StripWhitespace<CR> :%s/\n\{3,}/\r\r/e<CR> :w<CR>
