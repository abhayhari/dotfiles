#!/usr/bin/env bash
# Install packages with apt. For Debian and Ubuntu.
set -euo pipefail

sudo apt-get update
sudo env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  neovim git git-delta gh golang-go gopls ripgrep fd-find fzf bat glow tree tmux
