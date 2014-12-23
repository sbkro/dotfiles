# ---------------------------------------------------------
# dir-stack.conf.zsh
#  Defined the directory stack.
# ---------------------------------------------------------

# Stack size (default: 20)
DIRSTACKSIZE=10

# Each time moving the directory, path is registered in stack.
setopt auto_pushd

# The path which exist in the stack does not register.
setopt pushd_ignore_dups
