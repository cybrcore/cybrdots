```
░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-nvim.png"/></td>
<p align="center">
  <em>neovim ↗ (left: lazyvim dashboard; right top: recent files; right bottom: file)</em>
</p>

> [!WARNING]
> **Alpha version** - Non-standard structure. Proper lazy.nvim plugin coming in v1.5.  
>  
> This will **merge** files into your existing Neovim config. Backup first!  
> `cp -r ~/.config/nvim ~/.config/nvim.backup`

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure either 1) neovim is installed: `sudo pacman -S nvim`, or 2) lazyvim is installed: `git clone https://github.com/LazyVim/starter ~/.config/nvim`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Nvim Github](https://github.com/neovim/neovim) | [Nvim Arch Wiki](https://wiki.archlinux.org/title/Neovim)
- [Lazyvim Github](https://github.com/LazyVim/LazyVim)

## 1. Instalation
### Automated
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set nvim && git checkout main && mkdir -p ~/.config/nvim && cp -r nvim/* ~/.config/nvim/ && cd ~ && rm -rf cybrland
```
↑ Unsure what this does? [Explanation](../INSTALL.md#How-sparse-checkout-works)  

### Manual
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set nvim && git checkout main
```

### Expected file structure
```
~/.config/nvim/
├── colors/
│   └── cybrvim.lua
├── lua/
│    ├── cybrvim/
│    │    ├── groups.lua
│    │    ├── init.lua
│    │    └── palette.lua
│    ├── plugins/
│    │    ├── cybrvim.lua
│    │    └── dashboard.lua
│    └── ...
```

## 2. Apply theme
```sh
nvim
:colorscheme cybrvim
```
