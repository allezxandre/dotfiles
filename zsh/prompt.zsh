if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    prompt sorin
fi

PROMPT='$(kube_ps1) '$PROMPT
