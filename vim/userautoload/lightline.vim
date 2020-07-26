" ---------------------------------------------------------
"  ligthline.vim
"    lightlineの設定
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
