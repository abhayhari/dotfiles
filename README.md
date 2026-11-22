# dotfiles

Configs plus an installer for dev tools. The installer only
installs packages; copy the files yourself.

| Path | Copy to |
| --- | --- |
| `nvim/init.lua` | `~/.config/nvim/init.lua` |
| `gitconfig` | `~/.gitconfig` |
| `shell/.zshrc` | `~/.zshrc` |

`nvim/init.lua` requires Neovim 0.11+.

## Setup

Requires [Homebrew](https://brew.sh). If you're still on bash, follow the guide to
[install zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH).

```bash
git clone <this-repo-url> ~/projects/dotfiles
cd ~/projects/dotfiles
./install.sh

mkdir -p ~/.config/nvim
cp nvim/init.lua ~/.config/nvim/init.lua
cp gitconfig ~/.gitconfig
cp shell/.zshrc ~/.zshrc

git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

