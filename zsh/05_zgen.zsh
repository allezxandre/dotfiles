if [ ! -d "${HOME}/.zgen" ]; then
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then

    # specify plugins here
    zgen prezto

    zgen prezto prompt theme 'skwp'

    zgen prezto environment
    zgen prezto terminal
    zgen prezto editor
    zgen prezto history
    zgen prezto directory
    zgen prezto spectrum
    zgen prezto utility
    zgen prezto completion
    zgen prezto archive
    zgen prezto fasd
    zgen prezto git
    zgen prezto command-not-found
    zgen prezto syntax-highlighting
    zgen prezto history-substring-search
    zgen prezto ssh
    zgen prezto prompt

    # generate the init script from plugins above
    zgen save
fi
