# ---------------------------------------------------------
# path.conf.zsh
#  Defined the path settings.
# ---------------------------------------------------------


### Settings of OS-dependent
case ${OSTYPE} in
	darwin*)
		export PATH=~/bin:$PATH
		;;
	linux*)
		;;
esac
