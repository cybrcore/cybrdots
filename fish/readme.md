```
░▒▓████████▓▒░▒▓█▓▒░░▒▓███████▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓██████▓▒░ ░▒▓█▓▒░░▒▓██████▓▒░░▒▓████████▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-fish.png"/></td>

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure fish is installed: `sudo pacman -S fish`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/fish-shell/fish-shell) | [Arch Wiki](https://wiki.archlinux.org/title/Fish)

## 1. Create config file
```sh
$EDITOR ~/.config/fish/config.fish
```
## 2. Insert [config.fish](../fish/config.fish)

## 3. Restart fish
```sh
exec fish
```

## 4. Test
```sh
for var in (set -n | grep fish_color_)
	set color (string replace "fish_color_" "" $var)
	echo -n "$var → "
	set_color $$var
	echo "Sample text"
	set_color normal
end
```