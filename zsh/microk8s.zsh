if [ $commands[microk8s.kubectl] ]; then
    source <(microk8s.kubectl 2>/dev/null >/dev/null && microk8s.kubectl completion zsh | sed 's/__start_kubectl kubectl/__start_kubectl microk8s.kubectl/g')
    alias mkctl="microk8s.kubectl"
    complete -F __start_kubectl mkctl
fi
