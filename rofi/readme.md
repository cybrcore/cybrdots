```
░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓████████▓▒░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-rofi.png"/></td>
<p align="center">
  <em>rofi ↗ (top-left to bottom-right: launcher, clipboard, emoji; powermenu, screenshot menu, wallpaper menu)</em>
</p>

> ![WARNING]
> For Wallpaper switcher to work as intended, you need latest hyprpaper.  
> `CTRL + SUPER + W` launches the Wallpaper switcher, `ENTER` confirms the selection.
> If the selected wallpaper gets stuck, you can reset the timer by repeatedly selecting the wallpaper again.

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure hyprland is installed: `sudo pacman -S hyprland` and theme is applied  
- Make sure swaync is installed: `sudo pacman -S swaync`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/davatorium/rofi) | [Arch Wiki](https://wiki.archlinux.org/title/Rofi)

## 1. Download rofi configs
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set rofi && git checkout main && mv rofi ~/.config/ && cd ~ && rm -rf cybrland
```
↑ Unsure what this does? [Explanation](../INSTALL.md#How-sparse-checkout-works)  

## 2. Verify installation
```sh
ls -R ~/.config/rofi
```
You should see: `config.rasi`, `launcher.rasi`, `style.rasi`, `theme/`, `scripts/`

Make all scripts executable:
```sh
chmod +x \
  ~/.config/rofi/scripts/clipboard/clipboard \
  ~/.config/rofi/scripts/emoji/emoji \
  ~/.config/rofi/scripts/keybindings/keybindings \
  ~/.config/rofi/scripts/powermenu/powermenu \
  ~/.config/rofi/scripts/screenshot/screenshot \
  ~/.config/rofi/scripts/screenshot/screenshot_selection \
  ~/.config/rofi/scripts/wallpaper/wallpaper \
```

<details>
<summary>Expected file structure</summary>

```
~/.config/rofi/
├── config.rasi             # main settings
├── style.rasi              # visual styling
├── theme/
│   └── cybrlauncher.rasi   # global style settings
└── scripts/                # graphical elements
    ├── clipboard
	│   ├── clipboard
	│   └── style.rasi
    ├── emoji
	│   ├── emoji
	│   └── style.rasi
	├── game-launcher
	│   └── style.rasi
	├── keybindings
	│   └── keybindings
	├── powermenu
	│   ├── powermenu
	│   └── style.rasi
	├── screenshot
	│   ├── screenshot
	│   ├── screenshot_selection
	│   ├── screenshot-style.rasi
	│   └── style.rasi
	└── wallpaper
	    ├── style.rasi
        └── wallpaper

```
</details>

## 3. Test notifications
```sh
notify-send "Notification" "Basic notification body text, medium length"
notify-send -u low "Low priority" "Priority: Low"
notify-send -u normal "Normal priority" "Priority: Normal"
notify-send -u critical "Critical" "Critical notification!"
```