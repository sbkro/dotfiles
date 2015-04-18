#!/bin/sh

src_file=$(cd `dirname $01`;pwd)/_tmux.conf
dst_file=~/.tmux.conf

if [ -e ${dst_file} ]; then
    rm ${dst_file}
fi

ln -s ${src_file} ${dst_file}


echo ----------------------------------------------
echo Please install tmux from package manager.
echo 
echo OSX:
echo   $ brew install tmux
echo 
echo Linux:
echo   $ yum install yum
echo
echo If you need local settings, please create
echo '~/.tmux.conf_local'.
echo ----------------------------------------------
