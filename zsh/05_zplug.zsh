# Zplug: A next-generation plugin manager for zsh
# https://github.com/zplug/zplug

if [ ! -d $HOME/.zplug ]; then
  echo "Installing"
  git clone https://github.com/zplug/zplug ${ZPLUG_HOME:-$HOME/.zplug}
fi

# Check if zplug is installed
if [[ ! -f $HOME/.zplug/init.zsh ]]; then
  echo "ERROR: Install Zplug to use plug-ins"
  return
fi

source "${HOME}/.zplug/init.zsh"


# Settings
zstyle ':prezto:module:syntax-highlighting' highlighters \
  'main' \
  'brackets' \
  'pattern' \
  'cursor' \
  'root'
zstyle ':prezto:module:terminal' auto-title 'yes'
# Set case-sensitivity for completion, history lookup, etc.
zstyle ':prezto:*:*' case-sensitive 'no'
# Color output (auto set to 'no' on dumb terminals).
zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:module:prompt' theme 'skwp'

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Load plugins
zplug "modules/environment", from:prezto
zplug "modules/prompt", from:prezto

zplug "modules/command-not-found", from:prezto
zplug "modules/completion", from:prezto

zplug "modules/editor", from:prezto
zplug "modules/history-substring-search", from:prezto
zplug "modules/history", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/spectrum", from:prezto, if:"[[ $OSTYPE == *darwin* ]]"
zplug "modules/archive", from:prezto
zplug "modules/homebrew", from:prezto, if:"[[ $OSTYPE == *darwin* ]]"
zplug "modules/osx", from:prezto, if:"[[ $OSTYPE == *darwin* ]]"
zplug "modules/git", from:prezto
zplug "modules/ssh", from:prezto
zplug "modules/terminal", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/syntax-highlighting", from:prezto, defer:2, depth:0


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    zplug install
fi

# Then, source plugins and add commands to $PATH
LANG=en_US.UTF-8 zplug load --verbose
