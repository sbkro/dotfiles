" ---------------------------------------------------------
"  ligthline.vim
"    lightline$B$N@_Dj(B
" ---------------------------------------------------------



let g:lightline = {
    \ 'colorscheme' : 'powerline',
    \ 'active' : {
    \   'left' : [ ['mode', 'paste'],
    \              ['gitbranch', 'filename'],
    \              ['readonly', 'modified'] ],
    \ },
    \ 'component': {
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
\}
