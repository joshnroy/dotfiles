# dotfiles

macOS dotfiles for an M4 Pro MacBook Pro. All apps use the **Catppuccin Mocha** theme and **JetBrainsMono Nerd Font**.

## What's Included

| Tool | Description |
|------|-------------|
| [Ghostty](https://ghostty.org/) | Terminal |
| [Zellij](https://zellij.dev/) | Terminal multiplexer |
| [yabai](https://github.com/koekeishiya/yabai) | Tiling window manager |
| [skhd](https://github.com/koekeishiya/skhd) | Hotkey daemon (yabai keybinds) |
| [JankyBorders](https://github.com/FelixKratz/JankyBorders) | Window border highlights |
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
stow ghostty nvim skhd starship yabai zellij zsh
```

To unlink a package: `stow -D <package>`

## Repository Structure

```
Brewfile                            # Homebrew taps, formulae, casks
ghostty/.config/ghostty/            # Ghostty terminal config
nvim/.config/nvim/                  # LazyVim-based Neovim config
skhd/.config/skhd/                  # skhd hotkey daemon config
starship/.config/starship.toml      # Starship prompt config
yabai/.config/yabai/                # yabai tiling WM config
zellij/.config/zellij/              # Zellij terminal multiplexer config
zsh/.zshrc                          # Zsh config with aliases and tools
```

Symlinks are managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package that maps into your home directory.

## Zsh Aliases

| Alias | Command |
|-------|---------|
| `pr` | `pipenv run` |
| `pri` | `pipenv run invoke` |
| `i` | `invoke` |
| `git-rebase-main` | Switch to main, pull, rebase current branch, force-push |
| `md2pdf <in> [out]` | Convert Mermaid markdown to PDF |
