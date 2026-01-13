```
░▒▓███████▓▒░░▒▓███████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░▒▓████████▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░  ░▒▓█▓▒░     
```

<img src="../assets/inspiration/insp-broot.png"/></td>

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure kitty is installed: `sudo pacman -S kitty` and theme is applied
- Make sure broot is installed: `sudo pacman -S broot`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/Canop/broot)

## 1. Create theme folder and file
```sh
mkdir -p ~/.config/broot/skins
$EDITOR ~/.config/broot/skins/CYBRbroot.hjson
```
## 2. Insert [CYBRbroot](CYBRbroot.hjson)
## 3. Apply theme
```sh
# Open config
$EDITOR ~/.config/broot/config.hjson

# Enable True Colors and Icons
true_colors: true
icon_theme: nerdfont

# Add skin under luma: [dark] section
file: skins/CYBRbroot.hjson

# It should look like this:
{
luma: [
	dark
	unknown
]
//file: foo.hjson
//file: bar.hjson
file: skins/CYBRbroot.hjson
}
```
## 4. Restart terminal
```sh
pkill $TERM
```