#!/bin/sh

src_file=$(cd `dirname $01`;pwd)/_vrapperrc
dst_file=~/.vrapperrc

if [ -e ${dst_file} ]; then
    rm ${dst_file}
fi

ln -s ${src_file} ${dst_file}
