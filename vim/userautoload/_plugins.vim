" ---------------------------------------------------------
"  _plugins.vim
"    プラグイン管理の設定を格納。（NeoBundleを利用）
" ---------------------------------------------------------

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" 以下に、パッケージ名を記述する
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'Flake8-vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-scripts/DirDiff.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'taku-o/vim-toggle'


NeoBundleCheck
