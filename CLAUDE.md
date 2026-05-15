# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

macOS dotfiles repository for an M4 Pro MacBook Pro. Manages configurations for: Ghostty (terminal), Zellij (terminal multiplexer), yabai + skhd (tiling WM + hotkey daemon), JankyBorders (window borders), Neovim (LazyVim), Zsh (Oh My Zsh + Starship prompt), and Starship. All apps use the **Catppuccin Mocha** theme and **JetBrainsMono Nerd Font**.

## Setup Commands

```bash
# Install all Homebrew dependencies
brew bundle --file=Brewfile

# Link a stow package (run from ~/dotfiles)
stow <package>        # e.g., stow ghostty, stow yabai, stow zsh

# Unlink a stow package
stow -D <package>
```

## Symlink Management

All symlinks are managed via **GNU Stow**. Each top-level directory is a stow package. Run `cd ~/dotfiles && stow <package>` to create symlinks:

- `~/.zshrc` → `dotfiles/zsh/.zshrc`
- `~/.config/nvim` → `dotfiles/nvim/.config/nvim`
- `~/.config/yabai` → `dotfiles/yabai/.config/yabai`
- `~/.config/skhd` → `dotfiles/skhd/.config/skhd`
- `~/.config/ghostty` → `dotfiles/ghostty/.config/ghostty`
- `~/.config/zellij` → `dotfiles/zellij/.config/zellij`
- `~/.config/starship.toml` → `dotfiles/starship/.config/starship.toml`

## Repository Structure

```
Brewfile                           # Homebrew taps, formulae, casks
ghostty/.config/ghostty/           # Ghostty terminal config
nvim/.config/nvim/                 # LazyVim-based Neovim config
skhd/.config/skhd/                 # skhd hotkey daemon config
starship/.config/starship.toml     # Starship prompt config
yabai/.config/yabai/               # yabai tiling WM config
zellij/.config/zellij/             # Zellij terminal multiplexer config
zsh/.zshrc                         # Zsh with Oh My Zsh, aliases, conda, Starship init
```

## Neovim Configuration

Built on **LazyVim v8** with lazy.nvim plugin manager. Entry point is `nvim/.config/nvim/init.lua` → `lua/config/lazy.lua`.

- **Plugin specs**: `nvim/.config/nvim/lua/plugins/` (formatting.lua, snacks.lua)
- **Config overrides**: `nvim/.config/nvim/lua/config/` (options, keymaps, autocmds)
- **LazyVim extras**: Copilot, Copilot Chat, Prettier, Python, TypeScript, JSON, YAML, Markdown
- **Autoformat is disabled** — format manually with `<Space>cf`
- **Lua formatting**: stylua.toml at nvim root

## Zsh Aliases & Functions

- `pr` — `pipenv run`
- `pri` — `pipenv run invoke`
- `i` — `invoke`
- `git-rebase-main` — switch to main, pull, switch back, rebase, force-push
- `md2pdf <input.md> [output.pdf]` — convert Mermaid markdown to PDF via pandoc
