```
░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓████████▓▒░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░ 
```

## Result
<img src="../assets/inspiration/insp-rofi.png"/></td>
<p align="center">
  <em>rofi ↗ (top-left to bottom-right: launcher, clipboard, emoji; powermenu, screenshot menu, wallpaper menu)</em>
</p>

## Steps
### 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md##Prerequisites&Setup) is installed
- Make sure hyprland is installed: `sudo pacman -S hyprland` and theme is applied  
- Make sure swaync is installed: `sudo pacman -S kitty`
- Make sure `git` is installed: `sudo pacman -S git`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet

### 1. Download rofi configs
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set rofi && git checkout main && mv rofi ~/.config/ && cd ~ && rm -rf cybrland
```
↑ Unsure what this does? [Explanation](../INSTALL.md#How-sparse-checkout-works)  

### 2. Verify installation
```sh
ls -R ~/.config/rofi
```
You should see: `config.rasi`, `launcher.rasi`, `style.rasi`, `theme/`, `scripts/`

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

### 3. Test notifications
```sh
notify-send "Notification" "Basic notification body text, medium length"
notify-send -u low "Low priority" "Priority: Low"
notify-send -u normal "Normal priority" "Priority: Normal"
notify-send -u critical "Critical" "Critical notification!"
```