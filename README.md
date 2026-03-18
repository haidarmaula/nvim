# haidarmaula/nvim

This is my personal Neovim config. Built from scratch, tweaked obsessively, and tuned exactly the way my brain works. It's not a distro, it's not a starter template, and it's definitely not for everyone. It's just mine.

## A. The Story

Yeah, I used VS Code. It's fine, nothing wrong with it, but the reason I left wasn't really about performance or RAM or any of that. Honestly? I just really like typing. Like, a lot. Hands on keyboard, no mouse, no trackpad, just vibes and keystrokes. VS Code kind of supports that, but Neovim is literally built for it. And also, Neovim just looks cooler.

So I made the switch. Started with [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) like most people do, it gets you running fast, which is great. Until things started randomly breaking every time I opened Neovim. And since I had no idea what half the config actually did, fixing it was basically just vibes and luck. Eventually I got tired of that.

So I threw it all out and started from scratch.

## B. Philosophy

- **Keyboard first, always.** If I'm reaching for the mouse, something went wrong.
- **Understand what you install.** Every plugin here, I know what it does and why it's there. No more mystery configs.
- **One plugin, one file.** Future me should be able to find anything in under 5 seconds.
- **Stable over bleeding-edge.** I just want to write code, not debug my editor.

## C. Structure

```
.
├── init.lua                  # Entry point, loads everything
├── lazy-lock.json            # Lockfile so updates don't surprise me
└── lua
    ├── config
    │   ├── autocmds.lua      # Autocommands (e.g. highlight on yank)
    │   ├── keymaps.lua       # All keybindings in one place
    │   └── options.lua       # Neovim options & settings
    ├── core
    │   ├── lazy.lua          # Plugin manager bootstrap
    │   └── lsp.lua           # LSP servers & diagnostics
    └── plugins               # One file per plugin, no exceptions
```

## D. Plugins

| Category | Plugin |
|---|---|
| **Colorscheme** | [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) |
| **Syntax** | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) |
| **LSP** | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) |
| **Installer** | [mason.nvim](https://github.com/williamboman/mason.nvim), [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim), [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) |
| **Completion** | [blink.cmp](https://github.com/Saghen/blink.cmp) |
| **Formatter** | [conform.nvim](https://github.com/stevearc/conform.nvim) |
| **File Explorer** | [oil.nvim](https://github.com/stevearc/oil.nvim) |
| **Fuzzy Finder** | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) |
| **Statusline** | [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) |
| **Bufferline** | [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) |
| **Git** | [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) |
| **Autopairs** | [nvim-autopairs](https://github.com/windwp/nvim-autopairs) |
| **Surround** | [nvim-surround](https://github.com/kylechui/nvim-surround) |
| **Autotag** | [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) |
| **Indent** | [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) |

## E. Keymaps

**Leader key**: `Space`

### 1. General

| Key | Action |
|---|---|
| `<leader>w` | Save file |
| `<leader>q` | Quit |

### 2. Buffers

| Key | Action |
|---|---|
| `Shift+h` | Previous buffer |
| `Shift+l` | Next buffer |
| `<leader>bd` | Delete buffer |
| `[b` / `]b` | Move buffer left / right |

### 3. Splits

| Key | Action |
|---|---|
| `<leader>sh` | Split horizontally |
| `<leader>sv` | Split vertically |
| `<leader>sc` | Close current split |
| `<leader>so` | Close all other splits |
| `Ctrl+h/j/k/l` | Navigate between splits |
| `Alt+↑/↓/←/→` | Resize splits |

### 4. File & Search

| Key | Action |
|---|---|
| `-` | Open parent directory (Oil) |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader><leader>` | Buffers |
| `<leader>/` | Search in current buffer |

### 5. LSP (Lspsaga)

| Key | Action |
|---|---|
| `K` | Hover documentation |
| `gr` | Find references / definitions |
| `gD` | Peek definition |
| `gd` | Go to definition |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |
| `[e` / `]e` | Jump between diagnostics |
| `<leader>db` | Buffer diagnostics |
| `<leader>dw` | Workspace diagnostics |
| `<leader>o` | Toggle symbol outline |
| `<leader>ft` | Toggle floating terminal |

### 6. Movement

| Key | Action |
|---|---|
| `Alt+j/k` | Move line / selection up or down |

## F. Requirements

- [Neovim](https://neovim.io/) >= 0.10
- [Git](https://git-scm.com/)
- A [Nerd Font](https://www.nerdfonts.com/) — icons won't render without it, and it'll look terrible
- `make`, `gcc` / `clang` (for Treesitter parsers)

## G. Installation

> Back up your existing config first if you have one (`~/.config/nvim`).

```bash
git clone https://github.com/haidarmaula/nvim.git ~/.config/nvim
nvim
```

Lazy.nvim will bootstrap itself and install all plugins on the first launch.

---

*If you're reading this and considering using my config as a starting point, go ahead, that's how most of us learned. But honestly, you're better off building your own. You'll thank yourself later.*
