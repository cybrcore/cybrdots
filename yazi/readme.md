```
░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓████████▓▒░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░    ░▒▓██▓▒░░▒▓█▓▒░ 
 ░▒▓██████▓▒░░▒▓████████▓▒░  ░▒▓██▓▒░  ░▒▓█▓▒░ 
   ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░░▒▓██▓▒░    ░▒▓█▓▒░ 
   ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
   ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░ 
```

# Result
<img src="../assets/inspiration/insp-yazi.png"/></td>
<p align="center">
  <em>yazi ↗ (top-left: image folder; bottom-left: music folder; right: directory and file preview)</em>
</p>

# Steps
### 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md##Prerequisites&Setup) is installed
- Make sure kitty is installed: `sudo pacman -S kitty` and theme is applied
- Make sure yazi is installed: `sudo pacman -S yazi`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet

### 1. Create theme file
```sh
$EDITOR ~/.config/yazi/CYBRyazi.theme
```
### 2. Insert [CYBRyazi](CYBRyazi.toml)
### 3. Restart yazi
```sh
killall yazi && yazi
```
