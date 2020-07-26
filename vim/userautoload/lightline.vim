" ---------------------------------------------------------
"  ligthline.vim
"    lightlineの設定
" ---------------------------------------------------------



let g:lightline = {
    \ 'colorscheme' : 'powerline',
    \ 'active' : {
    \   'left' : [ ['mode', 'paste'],
    \              ['cwd', 'filename'],
    \              ['readonly', 'modified'] ],
    \   'right': [ ['lineinfo'],
    \              ['percent'],
    \              ['fileformat', 'fileencodeing', 'filetype', 'gitbranch'] ]
    \ },
    \ 'component': {
    \ },
    \ 'component_function': {
    \   'cwd': 'getcwd',
    \   'gitbranch': 'gitbranch#name'
    \ },
\}
