#!/usr/bin/env bash
set -e
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf "$DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"

mkdir -p "$HOME/.config"
ln -sfn "$DIR/nvim/.config/nvim" "$HOME/.config/nvim"

if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Done."
echo "Open tmux and press prefix+I to install tmux plugins."
echo "Open nvim once to let lazy.nvim install plugins from lazy-lock.json."
