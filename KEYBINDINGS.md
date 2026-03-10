# Neovim Keybindings Guide

This guide covers the most important and efficiency-boosting keybindings in your Neovim configuration.

## 🚀 Core Concepts

- **Leader Key**: Your leader key is set to `Space`. In this guide, `<leader>` refers to pressing the `Space` bar.
- **Modes**:
  - `Normal Mode`: The default mode for navigation and running commands (press `Esc` to return here).
  - `Insert Mode`: For typing text (press `i` to enter).
  - `Visual Mode`: For selecting text (press `v` to enter).

---

## 📂 File Navigation & Management

| Keybinding | Action | Plugin |
|------------|--------|--------|
| `<C-p>` | Search for files by name | Telescope |
| `<leader>fg` | Live grep (search for text in all files) | Telescope |
| `<leader><leader>` | Recent files | Telescope |
| `<C-n>` | Toggle File Explorer (Neo-tree) | Neo-tree |
| `-` | Open floating file browser (Oil) | Oil |
| `<leader>bf` | Show open buffers in a float | Neo-tree |

---

## 💻 LSP (Coding Intelligence)

These commands provide "IDE-like" features for your code.

| Keybinding | Action | Description |
|------------|--------|-------------|
| `K` | Hover Documentation | Shows documentation for the item under the cursor. |
| `<leader>k` | **Signature Help** | Shows what a function expects (parameters). |
| `<leader>gd` | Go to Definition | Jumps to where the variable/function is defined. |
| `<leader>gr` | Go to References | Lists all places where the item is used. |
| `<leader>ca` | Code Actions | Shows available quick fixes or refactorings. |
| `<leader>gf` | Format File | Cleans up code formatting (Prettier, LuaSnip, etc.). |

---

## 🪟 Window & Pane Navigation

Navigate seamlessly between Neovim splits and even Tmux panes (if used).

| Keybinding | Action |
|------------|--------|
| `<C-h>` | Move to left pane |
| `<C-j>` | Move to bottom pane |
| `<C-k>` | Move to top pane |
| `<C-l>` | Move to right pane |

---

## 🌿 Git Integration

| Keybinding | Action | Plugin |
|------------|--------|--------|
| `<leader>gp` | Preview Git hunk (changes) | Gitsigns |
| `<leader>gt` | Toggle Git blame for current line | Gitsigns |

---

## 🧪 Testing

| Keybinding | Action |
|------------|--------|
| `<leader>t` | Run nearest test |
| `<leader>T` | Run current test file |
| `<leader>a` | Run entire test suite |
| `<leader>l` | Run last run test |

---

## ⌨️ Terminal

| Keybinding | Action |
|------------|--------|
| `<C-\>` | Toggle floating terminal |

---

## 🛠️ General Tips

- `:nohlsearch` or `<leader>h`: Clear search highlighting.
- `u`: Undo.
- `<C-r>`: Redo.
- `:w`: Save file.
- `:q`: Quit.
