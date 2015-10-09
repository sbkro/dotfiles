" ---------------------------------------------------------
"  plugins_vim-markdown.vim
"    vim-markdownの設定を格納
" ---------------------------------------------------------

let g:vim_markdown_folding_disabled=1

autocmd BufRead,BufNewFile *.mkd set filetype=markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

nnoremap <C-x> <C-p> :PrevimOpen<CR>
