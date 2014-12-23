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
