# dotfiles

macOS dotfiles for an M4 Pro MacBook Pro. All apps use the **Catppuccin Mocha** theme and **JetBrainsMono Nerd Font**.

## What's Included

| Tool | Description |
|------|-------------|
| [Kitty](https://sw.kovidgoyal.net/kitty/) | Primary terminal (tabs work correctly with AeroSpace) |
| [Ghostty](https://ghostty.org/) | Backup terminal |
| [AeroSpace](https://github.com/nikitabobko/AeroSpace) | Tiling window manager |
| [JankyBorders](https://github.com/FelixKratz/JankyBorders) | Window border highlights (launched by AeroSpace) |
| [Neovim](https://neovim.io/) | Editor (LazyVim) |
| [Starship](https://starship.rs/) | Cross-shell prompt |
| [Zsh](https://www.zsh.org/) | Shell (Oh My Zsh) |

## Prerequisites

- macOS
- [Homebrew](https://brew.sh/)
- [Oh My Zsh](https://ohmyz.sh/)

## Installation

```bash
# Clone the repo
git clone https://github.com/<your-username>/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Install dependencies
brew bundle --file=Brewfile

# Symlink all configs
stow aerospace ghostty kitty nvim starship zsh
```

To unlink a package: `stow -D <package>`

## Repository Structure

```
Brewfile                            # Homebrew taps, formulae, casks
aerospace/.config/aerospace/        # AeroSpace tiling WM config
ghostty/.config/ghostty/            # Ghostty terminal config
kitty/.config/kitty/                # Kitty terminal config + theme
nvim/.config/nvim/                  # LazyVim-based Neovim config
starship/.config/starship.toml      # Starship prompt config
zsh/.zshrc                          # Zsh config with aliases and tools
```

Symlinks are managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package that maps into your home directory.

## Keybindings

### AeroSpace

Modifier key: **Alt (Option)**

| Key | Action |
|-----|--------|
| `Alt + j/k/l/;` | Focus left/down/up/right |
| `Alt + Shift + j/k/l/;` | Move window left/down/up/right |
| `Alt + 1-9` | Switch to workspace |
| `Alt + Shift + 1-9` | Move window to workspace |
| `Alt + F` | Fullscreen |
| `Alt + /` | Tiles layout |
| `Alt + ,` | Accordion layout |
| `Alt + -/=` | Shrink/grow window |
| `Alt + Tab` | Previous workspace |
| `Alt + Shift + '` | Enter service mode |

### Kitty

| Key | Action |
|-----|--------|
| `Cmd + T` | New tab (same directory) |
| `Cmd + N` | New window (same directory) |
| `Cmd + 1-9` | Switch to tab |
| `Ctrl + Shift + F5` | Reload config |

## Zsh Aliases

| Alias | Command |
|-------|---------|
| `pr` | `pipenv run` |
| `pri` | `pipenv run invoke` |
| `i` | `invoke` |
| `git-rebase-main` | Switch to main, pull, rebase current branch, force-push |
| `md2pdf <in> [out]` | Convert Mermaid markdown to PDF |
