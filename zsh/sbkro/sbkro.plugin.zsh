# Basic Settings
export LANG="ja_JP.UTF-8"
export LESSCHARSET=utf-8
export TERM=xterm-256color
case ${OSTYPE} in
	darwin*)
		export SHELL=/usr/local/bin/zsh
		;;
	linux*)
		;;
esac

# keybind
#  -e: Emacs like
#  -v: Vi like
bindkey -e

# Enable auto-complate.
autoload -U compinit; compinit

# Color Settings
autoload colors
colors
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Enable auto-pushd.
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'
setopt auto_pushd
setopt pushd_ignore_dups

# Enable glob
setopt extended_glob

# Settings for History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_all_dups
setopt hist_ignore_space
zstyle ':completion:*:default' menu select=1

# Path Settings
case ${OSTYPE} in
	darwin*)
		# Settings for OSX
		export PATH=~/bin:$PATH
		;;
	linux*)
		# Settings for Linux
		;;
esac

# Alias Settings
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
case ${OSTYPE} in
	darwin*)
		# Settings for OSX
		alias ql='qlmanage -p "$@" >& /dev/null'
		alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
		alias gvim='env LANG=ja_JP.UTF-8 open -a /Applications/MacVim.app "$@"'
		;;
	linux*)
		# Settings for Linux
		;;
esac

# Private Settings
if [ -e "$HOME/.zshenv_local" ]; then
	source "$HOME/.zshenv_local"
fi

# Launch tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
