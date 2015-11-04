" @file plugins-tags.vim
" @brief Plugins that handle Exhuberant Ctags.
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

"-------------------------------------------------------------------------------
" EasyTags: This plugin generates ctags every time I save the file.  Then I can
" browse them with the native Vim keybindings, or use the tagbar to view them.
"-------------------------------------------------------------------------------
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

set tags=~/.vimtags

" generate tags on file read/write
let g:easytags_events = ['BufReadPost', 'BufWritePost']

" perform tag generation asyncronously
let g:easytags_async = 1

" put the tags in ./.vimtags file
let g:easytags_dynamic_files = 0

" because sometimes I need to use symlinks on the tagfiles
let g:easytags_resolve_links = 1

" stops the program from yelling at me if Exhuberant ctags is not installed
let g:easytags_suppress_ctags_warning = 1

"-------------------------------------------------------------------------------
" TagBar: Lets me view ctags in a nice side bar with clickable tag jumps.
"-------------------------------------------------------------------------------
Plugin 'majutsushi/tagbar'

" Reconfigure the tagbar for latex
let g:tagbar_type_tex = {
\    'ctagstype' : 'tex',
\    'kinds' : [
\        's:sections',
\        'g:graphics:0:0',
\        'l:labels',
\        'r:refs:1:0',
\        'p:pagerefs:1:0'
\    ],
\    'sort' : 0,
\ }
