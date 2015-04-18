#! /bin/sh

# setup oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


src_file=$(cd `dirname $01`;pwd)/_zshrc
dst_file=~/.zshrc

if [ -e ${dst_file} ]; then
    rm ${dst_file}
fi

ln -s ${src_file} ${dst_file}


src_file=$(cd `dirname $01`;pwd)/sbkro
dst_file=~/.oh-my-zsh/custom/plugins/sbkro

if [ -e ${dst_file} ]; then
    rm ${dst_file}
fi

ln -s ${src_file} ${dst_file}
