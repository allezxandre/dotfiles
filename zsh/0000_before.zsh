# Si le terminal est DUMB (genre Emacs Tramp), on quitte
[[ $TERM == "dumb" ]] && unsetopt zle && return
# Load any user customizations prior to load
#
if [[ -d $HOME/.zsh.before/ && $(ls -A $HOME/.zsh.before/) ]]; then
  for config_file in $HOME/.zsh.before/(*.zsh); do source $config_file; done
fi

# Tell SSH-Add to use Apple Keychain
ssh-add --apple-use-keychain -q || true