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

# Load plugins
zplug "modules/environment", from:prezto
zplug "modules/terminal", from:prezto
zplug "modules/editor", from:prezto
zplug "modules/history", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/spectrum", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/archive", from:prezto
zplug "modules/git", from:prezto
zplug "modules/ssh", from:prezto
zplug "modules/syntax-highlighting", from:prezto, defer:2
zplug "modules/history-substring-search", from:prezto, defer:2
zplug "modules/prompt", from:prezto, defer:3

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
