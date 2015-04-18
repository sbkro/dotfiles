" ---------------------------------------------------------
"  plugin_unite.vim
"    Uniteの設定を格納
" ---------------------------------------------------------

" insertモードで開始する。
let g:unite_enable_start_insert=1

" 最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit=200

nnoremap <silent> <C-X><C-Y> :<C-u>Unite history/yank<CR>
nnoremap <silent> <C-X><C-B> :<C-u>Unite buffer<CR>
nnoremap <silent> <C-X><C-M> :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> <C-X><C-F> :<C-u>UniteWithBufferDir -buffer-name=file file<CR>
