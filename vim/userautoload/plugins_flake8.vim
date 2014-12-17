" ---------------------------------------------------------
"  plugins_flake8.vim
"    Flake8-vimの設定を格納
" ---------------------------------------------------------

" 保存時に自動でチェックする。
let g:PyFlakeOnWrite = 1

" 解析種別を設定
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'

" McCabe複雑度の最大値
let g:PyFlakeDefaultComplexity=10

" visualモードで、Qを押すと自動で修正
let g:PyFlakeRangeCommand = 'Q'
