# ---------------------------------------------------------
# alias.conf.zsh
#  Defined the alias settings.
# ---------------------------------------------------------

alias ls="ls -vFG"
alias ll="ls -lvFG"
alias m2u="tr '\015' '\012'"
alias u2m="tr '\012' '\015'"
alias cp='cp -i'
alias rm="rm -iv"
alias javac="javac -J-Dfile.encoding=UTF8"
alias java="java -Dfile.encoding=UTF8"
alias less="less -r"
alias more="more -r"
alias p='popd'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vf="vi +VimFiler"
alias tree="tree --charset='x'"

### Settings of OS-dependent
case ${OSTYPE} in
    darwin*)
        # Quick Look
        alias ql='qlmanage -p "$@" >& /dev/null'

        # Vim (MacVim-KaoriYa)
        alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
        alias gvim='env LANG=ja_JP.UTF-8 open -a /Applications/MacVim.app "$@"'
        ;;
    linux*)
        ;;
esac
