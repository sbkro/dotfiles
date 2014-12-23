# ---------------------------------------------------------
# sbkro.plugin.zsh
#  Custom plugin to initialize the Zsh.
# ---------------------------------------------------------

### Load config files
plugin_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
for config_file in `ls -1 ${plugin_dir}/*.conf.zsh`; do
    source $config_file
done

### Load local config file.
if [ -e "$HOME/.zshenv_local" ]; then
    source "$HOME/.zshenv_local"
fi

### Launch tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
