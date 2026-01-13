```
░▒▓███████▓▒░ ░▒▓██████▓▒░▒▓████████▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓███████▓▒░░▒▓████████▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
```

<img src="../assets/inspiration/insp-bat.png"/></td>
<p align="center">
  <em>bat ↗ (top-left to bottom-right: rust, python, css; bash, c++, html)</em>
</p>

# Steps
## 0. Before you start
- Make sure kitty is installed: `sudo pacman -S kitty` and theme is applied
- Make sure fish is installed: `sudo pacman -S fish` and theme is applied
- Make sure bat is installed: `sudo pacman -S bat`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/sharkdp/bat)

## 1. Create theme folder
```sh
mkdir -p ~/.config/bat/themes
$EDITOR ~/.config/bat/themes/CYBRbat.tmTheme
```

## 2. Insert [CYBRbat](CYBRbat.tmTheme)
## 3. Rebuild and check
```sh
# Rebuild cache
bat cache --build

# Check if theme is loaded
bat --list-themes
```

## 4. Apply theme
You can either use a command:
```sh
bat --theme"CYBRbat"
```
Or you can edit the config file:
```sh
$EDITOR ~/.config/bat/config

# Paste inside the config file
--theme="CYBRbat"
```