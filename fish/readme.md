```
░▒▓████████▓▒░▒▓█▓▒░░▒▓███████▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓██████▓▒░ ░▒▓█▓▒░░▒▓██████▓▒░░▒▓████████▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
```

## Result
<img src="../assets/inspiration/insp-fish.png"/></td>

## Steps
### 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md##Prerequisites&Setup) is installed
- Make sure fish is installed: `sudo pacman -S fish`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet

### 1. Create config file
```sh
$EDITOR ~/.config/fish/config.fish
```
### 2. Insert [config.fish](../fish/config.fish)

### 3. Create theme file
```sh
$EDITOR ~/.config/fish/CYBRfish.fish
```
### 4. Insert [CYBRfish](../fish/CYBRfish.fish)

### 5. Apply theme
```sh
source ~/.config/fish/CYBRfish.fish
  echo done
```

### 6. Test
```sh
for var in (set -n | grep fish_color_)
	set color (string replace "fish_color_" "" $var)
	echo -n "$var → "
	set_color $$var
	echo "Sample text"
	set_color normal
end
```