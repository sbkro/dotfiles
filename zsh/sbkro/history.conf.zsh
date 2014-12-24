# ---------------------------------------------------------
# history.conf.zsh
#  Defined the history settings.
# ---------------------------------------------------------

# History file path.
HISTFILE=~/.zsh_history

# Number of history that is stored in the memory.
HISTSIZE=50000

# Number of history which saving in the HISTFILE.
SAVEHIST=50000

# Duplicate command is not registerd in the history.
setopt hist_ignore_all_dups

# The command which begin from space does not register in the history.
setopt hist_ignore_space

# Increment search
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | eval $tac | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
