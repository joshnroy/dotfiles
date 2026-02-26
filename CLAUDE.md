# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

macOS dotfiles repository for an M4 Pro MacBook Pro. Manages configurations for: Kitty (primary terminal), Ghostty (backup terminal), AeroSpace (tiling WM), JankyBorders (window borders), Neovim (LazyVim), Zsh (Oh My Zsh + Starship prompt), and Starship. All apps use the **Catppuccin Mocha** theme and **JetBrainsMono Nerd Font**.

## Setup Commands

```bash
# Install all Homebrew dependencies
brew bundle --file=Brewfile

# Link a stow package (run from ~/dotfiles)
stow <package>        # e.g., stow kitty, stow aerospace, stow zsh

# Unlink a stow package
stow -D <package>

# Reload configs after changes
aerospace reload-config              # AeroSpace
# Kitty: press Ctrl-Shift-F5 in the terminal window
```

## Symlink Management

All symlinks are managed via **GNU Stow**. Each top-level directory is a stow package. Run `cd ~/dotfiles && stow <package>` to create symlinks:

- `~/.zshrc` → `dotfiles/zsh/.zshrc`
- `~/.config/nvim` → `dotfiles/nvim/.config/nvim`
- `~/.config/aerospace` → `dotfiles/aerospace/.config/aerospace`
- `~/.config/ghostty` → `dotfiles/ghostty/.config/ghostty`
- `~/.config/kitty` → `dotfiles/kitty/.config/kitty`
- `~/.config/starship.toml` → `dotfiles/starship/.config/starship.toml`

## Repository Structure

```
Brewfile                           # Homebrew taps, formulae, casks
aerospace/.config/aerospace/       # AeroSpace tiling WM config
ghostty/.config/ghostty/           # Ghostty terminal (backup — has tab bug with AeroSpace)
kitty/.config/kitty/               # Kitty terminal (primary) + current-theme.conf
nvim/.config/nvim/                 # LazyVim-based Neovim config
starship/.config/starship.toml     # Starship prompt config
zsh/.zshrc                         # Zsh with Oh My Zsh, aliases, conda, Starship init
```

## AeroSpace (Tiling WM)

- **Modifier key**: Alt (Option)
- **Navigation**: `jkl;` (NOT hjkl) — j=left, k=down, l=up, ;=right
- **Move windows**: Alt-Shift + jkl;
- **Workspaces**: Alt-1 through Alt-9, Alt-Shift-1..9 to move windows
- **Fullscreen**: Alt-F
- **Layout toggle**: Alt-/ (tiles), Alt-, (accordion)
- **Resize**: Alt-- (shrink), Alt-= (grow)
- **Service mode**: Alt-Shift-' to enter, Esc to reload config and exit, F to toggle floating
- **JankyBorders**: Launched automatically via `after-startup-command`. Active border is Catppuccin mauve (#cba6f7), inactive is surface0 (#313244), 8px width, round style.

## Kitty (Primary Terminal)

Kitty is preferred over Ghostty because its custom tab system works correctly with AeroSpace (Ghostty uses native macOS tabs which AeroSpace treats as separate windows).

- **New tab (cwd)**: Cmd-T
- **New window (cwd)**: Cmd-N
- **Switch tabs**: Cmd-1 through Cmd-9
- **Reload config**: Ctrl-Shift-F5
- **Tab bar**: Powerline style, top edge
- **Option as Alt**: Enabled (required for AeroSpace keybinds inside Kitty)

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
