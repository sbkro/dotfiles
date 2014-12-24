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

# Increment search
function peco-selected-dir () {
    local selected_dir=$(cdr -l | awk '{print $2}' | peco)
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-selected-dir
bindkey '^x^f' peco-selected-dir
