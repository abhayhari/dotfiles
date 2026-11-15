# dotfiles

Configs plus package installers. The installers only install packages; copy
the files yourself.

| Path | Copy to |
| --- | --- |
| `nvim/init.lua` | `~/.config/nvim/init.lua` |
| `gitconfig` | `~/.gitconfig` |

`nvim/init.lua` requires Neovim 0.11+.

## Setup

```bash
git clone <this-repo-url> ~/projects/dotfiles
cd ~/projects/dotfiles
./install-apt.sh            # Debian / Ubuntu
# or: ./install-brew.sh     # macOS (requires Homebrew)

mkdir -p ~/.config/nvim
cp nvim/init.lua ~/.config/nvim/init.lua
cp gitconfig ~/.gitconfig

git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```
