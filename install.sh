#!/usr/bin/env bash
# Install dev tools with Homebrew and oh-my-zsh. Requires Homebrew on PATH.
set -euo pipefail

brew install neovim git git-delta gh go gopls ripgrep fd fzf bat glow tree tmux tree-sitter-cli

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
