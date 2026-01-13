```
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓███████▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░    ░▒▓██████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░     
```

<img src="../assets/inspiration/insp-micro.png"/></td>
<p align="center">
  <em>kitty ↗ (top-left to bottom-right: rust, python, css; bash, c++, html)</em>
</p>

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure kitty is installed: `sudo pacman -S kitty`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/kovidgoyal/kitty) | [Arch wiki](https://wiki.archlinux.org/title/Kitty)

## 1. Create theme folder and file
```sh
mkdir -p ~/.config/kitty/themes
$EDITOR ~/.config/kitty/themes/CYBRkitty.conf
```
## 2. Insert [CYBRkitty](../kitty/CYBRkitty.conf)
```sh
$EDITOR ~/.config/kitty/themes/CYBRkitty.conf
```
## 3. Restart kitty and apply theme
```sh
pkill kitty && include themes/CYBRkitty.conf
```