#!/bin/sh

function confirm {
    prompt_msg=$1

    while :
    do
        echo "${prompt_msg} [Y/N]:"
        read answer
        case $answer in
            [yY]) return 0;;
            [nN]) return 1;;
        esac
    done
}


for dirname in `ls -F -1 | grep -e '/$'`; do
    target_sh="./${dirname}setup.sh"
    if test -e ${target_sh} || test -x ${target_sh} ; then
        confirm "Is setup? -> ${target_sh}"

        if [ ${?} == 0 ]; then
            ${target_sh}
            echo ""
        fi
    fi
done

