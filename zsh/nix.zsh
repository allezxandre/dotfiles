if [ -f $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; 
elif [ -f /etc/profile.d/nix.sh ]; then . /etc/profile.d/nix.sh; fi
