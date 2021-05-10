if [ ! -d "${HOME}/.zgen" ]; then
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
    echo "ZGen is regenerating configuration..."
    # specify plugins here

    # zgen load jeffreytse/zsh-vi-mode

    # Prezto
    zgen prezto

    zgen prezto environment
    zgen prezto terminal
    zgen prezto editor
    zgen prezto history
    zgen prezto directory
    zgen prezto spectrum
    zgen prezto utility
    zgen prezto completion
    zgen prezto archive
    zgen prezto git
    zgen prezto command-not-found
    zgen prezto ssh
    zgen prezto syntax-highlighting
    zgen prezto history-substring-search
    zgen prezto prompt

    # Other
    zgen load spwhitt/nix-zsh-completions

    # generate the init script from plugins above
    zgen save
fi


ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM

function zvm_before_init() {
  zvm_bindkey viins '^[[A' history-substring-search-up
  zvm_bindkey viins '^[[B' history-substring-search-down
  zvm_bindkey vicmd '^[[A' history-substring-search-up
  zvm_bindkey vicmd '^[[B' history-substring-search-down
}
