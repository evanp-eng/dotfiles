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

# Key Bindings

## tmux — prefix is `Ctrl-Space`

| Action | Keys |
|---|---|
| Detach session | `prefix` `d` |
| Reattach | `tmux a` (or `tmux attach -t <name>`) |
| New window | `prefix` `c` |
| Next / previous window | `prefix` `n` / `prefix` `p` |
| Jump to window N | `prefix` `0`–`9` |
| Rename window | `prefix` `,` |
| List sessions | `prefix` `s` |
| Kill current pane | `prefix` `x` |
| Reload `~/.tmux.conf` | `prefix` `r` |
| Install/update plugins (TPM) | `prefix` `I` (capital i) |
| Split horizontal (prefix) | `prefix` `/` |
| Split vertical (prefix) | `prefix` `-` |
| Split horizontal (no prefix, Terminator-style) | `Ctrl-E` |
| Split vertical (no prefix, Terminator-style) | `Ctrl-O` |
| Resize pane | `Ctrl-Shift` + `←` `→` `↑` `↓` |
| Move between panes *(shared with vim — see below)* | `Ctrl-h/j/k/l` |
| Mouse: select text within a pane, copy to system clipboard | click + drag, release |
| Mouse: select across the whole terminal (bypass tmux) | `Shift` + click + drag |

## Neovim — leader is `Space`

### Files & navigation
| Action | Keys |
|---|---|
| Toggle file tree (Neo-tree) | `<leader>e` |
| Find files | `<leader>ff` |
| Live grep (search text in project) | `<leader>fg` |
| Find open buffers | `<leader>fb` |
| Move between vim splits **and** tmux panes seamlessly | `Ctrl-h/j/k/l` |
| Save | `<leader>w` |
| Quit | `<leader>q` |
| Close buffer | `<leader>bd` |
| Clear search highlight | `Esc` |

### Neo-tree (while focused inside the tree panel)
| Action | Keys |
|---|---|
| Open file / expand folder | `Enter` or `o` |
| Open file in vertical split | `s` |
| Open file in horizontal split | `S` |
| Open file in new tab | `t` |
| Add file | `a` |
| Add directory | `A` |
| Delete | `d` |
| Rename | `r` |
| Copy (mark) / Cut / Paste | `y` / `x` / `p` |
| Refresh tree | `R` |
| Toggle hidden files | `H` |
| Filter/fuzzy-find within tree | `/` |
| Close tree | `q` |

### LSP (active once a language server attaches to a buffer)
| Action | Keys |
|---|---|
| Go to definition | `gd` |
| Find references | `gr` |
| Hover docs | `K` |
| Rename symbol | `<leader>rn` |
| Code action | `<leader>ca` |
| Show diagnostic detail | `<leader>d` |

### Autocompletion menu (blink.cmp)
| Action | Keys |
|---|---|
| Next suggestion | `Ctrl-n` (or `↓`) |
| Previous suggestion | `Ctrl-p` (or `↑`) |
| Accept selected suggestion | `Ctrl-y` |
| Manually trigger completion | `Ctrl-Space` |
| Scroll documentation down / up | `Ctrl-f` / `Ctrl-b` |
| Dismiss the menu | `Ctrl-e` |

*Note: `Enter` does **not** accept a completion in this setup — it just inserts a newline, even with the menu open. `Ctrl-y` is what confirms your selection.*

### Project-wide search & replace (Spectre)
| Action | Keys |
|---|---|
| Open Spectre panel | `<leader>sr` |
| Search word under cursor | `<leader>sw` |
| Replace all (inside Spectre) | `<leader>R` |
| Toggle a match on/off before replacing | `Enter` on that line (inside Spectre) |

### Plugin & LSP management (commands, not keys)
| Action | Command |
|---|---|
| Open plugin manager UI | `:Lazy` |
| Sync/update plugins | `:Lazy sync` |
| Open LSP/tool installer UI | `:Mason` |
| Install a specific server | `:MasonInstall <name>` |
| Force-reinstall treesitter parsers | `:TSUpdate!` |
| Check treesitter health | `:checkhealth nvim-treesitter` |

---
*Tip: press `<leader>` (Space) and pause — which-key.nvim will pop up showing every available keybinding starting from wherever you are, so you don't have to memorize this whole sheet.*
