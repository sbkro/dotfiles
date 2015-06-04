" ---------------------------------------------------------
"  _plugins.vim
"    プラグイン管理の設定を格納。（NeoBundleを利用）
" ---------------------------------------------------------

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'

  NeoBundle 'davidhalter/jedi-vim'
  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'Flake8-vim'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/vimfiler'
  NeoBundle 'Yggdroot/indentLine'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'vim-scripts/DirDiff.vim'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'taku-o/vim-toggle'
  NeoBundle 'godlygeek/tabular'
  NeoBundle 'plasticboy/vim-markdown'
  NeoBundle 'kannokanno/previm'
  NeoBundle 'tyru/open-browser.vim'

  if has ("mac")
      NeoBundle 'toyamarinyon/vim-swift'
  endif
call neobundle#end()

NeoBundleCheck
