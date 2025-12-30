```
░▒▓███████▓▒░▒▓████████▓▒░▒▓██████▓▒░░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓███████▓▒░  ░▒▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        
░▒▓███████▓▒░  ░▒▓█▓▒░   ░▒▓██████▓▒░░▒▓█▓▒░        
```

## Result
<img src="../assets/inspiration/insp-btop.png" width="800"/></td>

## Steps
### 1. Install btop
```sh
sudo pacman -S btop
```
### 2. Create theme folder and file
```sh
mkdir -p ~/.config/btop/themes
$EDITOR ~/.config/btop/themes/CYBRtop.theme
```
### 3. Insert [CYBRtop](../btop/CYBRtop.theme)
### 4. Apply theme
```sh
btop

# Press ESC -> Options
# Select Color theme, then select CYBRtop with left/right arrow keys
# You can exit btop by pressing Q
```
