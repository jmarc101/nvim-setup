# Neovim Setup

## Installation 

### Fedora

1. Install Dependencies:
```
    sudo dnf install gcc nodejs neovim
```
2. Set Up Packer:
```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
4. Clone Configuration:
```
    git clone https://github.com/jmarc101/nvim-setup ~/.config/nvim
```
6. Sync with Packer:
    Launch Neovim and execute:
```
    :so
```
```
    :PackerSync
```
8. Important Notes:
   - Before syncing, consider removing `~/.config/nvim/after/` to prevent issues.
   - If there are issues, temporarily move the folder and move it back after syncing.

## Keybindings

### Global

| Mode | Keybinding | Action             |
|------|------------|--------------------|
| n    | Space      | Set map leader     |

### Navigation and UI

| Mode | Keybinding       | Action                                 |
|------|------------------|----------------------------------------|
| n    | <C-k>            | Next error                             |
| n    | <C-j>            | Previous error                         |
| n    | <leader>k        | Next LSP issue                         |
| n    | <leader>j        | Previous LSP issue                     |
| n    | K                | Show LSP hover info                    |
| n    | gd               | LSP find definition                    |

### Editing

| Mode | Keybinding       | Action                                           |
|------|------------------|--------------------------------------------------|
| n    | <leader>y        | Select & copy to clipboard                       |

### Git Commands

| Mode | Keybinding       | Action                                |
|------|------------------|---------------------------------------|
| n    | <leader>p        | Push current branch                   |

### Utilities & Plugins

| Mode | Keybinding       | Action                                |
|------|------------------|---------------------------------------|
| n    | <leader>vpp      | Open `packer.lua` config file         |


