#!/bin/sh


function s_link {
    src=$(cd `dirname $01`;pwd)/$1
    dst=$2

    if [ -e ${dst} ]; then
       rm ${dst}
    fi

    ln -s ${src} ${dst}
}


VIM_ROOT=~/.vim
VIM_COLORS=${VIM_ROOT}/colors
VIM_BUNDLE=${VIM_ROOT}/bundle


if [ -e ${VIM_ROOT} ];then
    rm -fr ${VIM_ROOT}
fi

for dir in ${VIM_ROOT} ${VIM_COLORS} ${VIM_BUNDLE}; do
    mkdir ${dir}
done

s_link _gvimrc ~/.gvimrc
s_link _vimrc  ~/.vimrc
s_link userautoload ~/.vim/userautoload
s_link rc ~/.vim/rc

# setup solarized
git clone git://github.com/altercation/vim-colors-solarized.git ${VIM_COLORS}/tmp
cp ${VIM_COLORS}/tmp/colors/solarized.vim ${VIM_COLORS}
rm -fr ${VIM_COLORS}/tmp
