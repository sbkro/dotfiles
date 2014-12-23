# ---------------------------------------------------------
# basic.conf.zsh
#  Defined the basic settings.
# ---------------------------------------------------------

### Language
export LANG="ja_JP.UTF-8"
export LESSCHARSET=utf-8


### Terminal
export TERM=xterm-256color


### Enable glob
setopt extended_glob


### Enable plugins
# zmv
autoload -Uz zmv

# cdr
autoload -Uz add-zsh-hook
autoload -Uz chpwd_recent_dirs cdr
add-zsh-hook chpwd chpwd_recent_dirs


### Settings of OS-dependent
case ${OSTYPE} in
	darwin*)
		export SHELL=/usr/local/bin/zsh
		;;
	linux*)
		;;
esac
