" ---------------------------------------------------------
"  basic.vim
"    基本的な設定を格納
" ---------------------------------------------------------

" 自動改行をOFF
set formatoptions=q

" 検索時に、末尾に到達した場合、先頭に戻る。
" (有効: wrapscan / 無効: nowrapscan)
set nowrapscan

" タブのサイズ
set tabstop=4
set shiftwidth=4
set softtabstop=2
set autoindent
set smartindent

" 行数を表示する
set number

" バックアップを作成しない
set nobackup

" カーソル行をハイライト
set cursorline

" 不可視文字を標示する
set list
set listchars=tab:»-,trail:-,eol:^,extends:»,precedes:«,nbsp:

" タブ→スペースへの展開（有効: expandtab/無効: noexpandtab）
set expandtab

" 保存時に、行末の空白を削除する。
autocmd BufWritePre * :%s/\s\+$//ge

" インクリメントサーチ
set incsearch

" Undoファイルを作成しない。
set noundofile

" 文字コードの設定
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,utf-8,euc-jp,cp932

" ステータスラインを常に表示させる。
set laststatus=2

