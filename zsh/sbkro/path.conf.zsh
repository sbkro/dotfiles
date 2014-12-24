# ---------------------------------------------------------
# path.conf.zsh
#  Defined the path settings.
# ---------------------------------------------------------


### Settings of OS-dependent
case ${OSTYPE} in
	darwin*)
		export PATH=~/bin:$PATH
		export PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH
		;;
	linux*)
		;;
esac
