# dotfiles

tmux and neovim configs.

- `tmux/.tmux.conf` — symlinked to `~/.tmux.conf`
- `nvim/.config/nvim/` — symlinked to `~/.config/nvim`

## New machine setup

```bash
git clone git@github.com:<you>/dotfiles.git ~/dotfiles
~/dotfiles/install.sh
```

Then:

1. Open `tmux` and press `prefix + I` to install tmux plugins (via TPM).
2. Open `nvim` once — `lazy.nvim` bootstraps itself and installs plugins
   from `lazy-lock.json` automatically.
