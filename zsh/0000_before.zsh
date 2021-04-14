# Si le terminal est DUMB (genre Emacs Tramp), on quitte
[[ $TERM == "dumb" ]] && unsetopt zle && return
# Load any user customizations prior to load
#
if [ -d $HOME/.zsh.before/ ]; then
  if [ "$(ls -A $HOME/.zsh.before/)" ]; then
    for config_file ($HOME/.zsh.before/*.zsh) source $config_file
  fi
fi
