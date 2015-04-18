#!/bin/sh

src_file=$(cd `dirname $01`;pwd)/_inputrc
dst_file=~/.inputrc

if [ -e ${dst_file} ]; then
    rm ${dst_file}
fi

ln -s ${src_file} ${dst_file}
