" @file nav.vim
" @brief Navigation shortcuts, for everything related to moving around.
" @author Oscar Bezi, oscar@bezi.io
" @since 5 May 2015
"===============================================================================

" make the bracket move easier to hit (move from opening to closing braces, etc)
" TODO: see if I actually use this
noremap <tab> %
vnoremap <tab> %

" noob tools: I've disabled these to prevent myself from getting into a bad
" habit.
" TODO: toggle these whenever other people need to drive.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <ESC> <nop>

" make the j and k work better with wrapped text
" if you hit j, it goes down a visual line, not a logical line
noremap j gj
noremap k gk

" navigate splits by adding the Ctrl-modifier to the analogous vim motion
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
