# dotfiles

Shared settings for Unix-based setups

## Install

### Clone the repository

```bash
git clone https://github.com/Allezxandre/dotfiles.git $HOME/.dotfiles
```

### Install ZSH

```bash
sudo apt update && sudo apt install zsh -y
```

Create a `.zshrc` file that will source all ZSH settings:

```bash
touch $HOME/.zshrc
cat <<EOT >> $HOME/.zshrc
# Source all files in the ZSH dotfiles subfolder
for config_file (\$HOME/.dotfiles/zsh/*.zsh) source \$config_file
EOT
```

Start ZSH:

```bash
zsh
```

Set ZSH as the default shell:

```bash
chsh -s $(which zsh)
```

### Link Git settings

```bash
if [ -f "$HOME/.gitconfig" ]; then
    echo "Git Config is already present. Skipping..."
else
    ln -s "$HOME/.dotfiles/git/gitconfig" "$HOME/.gitconfig"
    echo "Git was successfully linked."
fi
```

### Install Nix

```bash
# Multi-user set-up:
sh <(curl -L https://nixos.org/nix/install) --daemon
# OR
sh <(curl -L https://nixos.org/nix/install)
```
