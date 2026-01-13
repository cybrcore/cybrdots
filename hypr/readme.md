```
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓████████▓▒░░▒▓██████▓▒░░▒▓███████▓▒░░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-hypr.png"/></td>
<p align="center">
  <em>hypr ↗ (right: firefox; left top to bottom: firefox, emoji, powermenu, screenshot menu, wallpaper menu)</em>
</p>
<img src="../assets/inspiration/insp-hypr2.png"/></td>
<p align="center">
  <em>hypr ↗ (foreground: firefox w/Cyberspace.online; background: cava)</em>
</p>

> ![WARNING]
> For Wallpaper switcher ([rofi](../rofi/readme.md)) to work as intended, you need latest hyprpaper.  
> `CTRL + SUPER + W` launches the Wallpaper switcher, `ENTER` confirms the selection.
> If the selected wallpaper gets stuck, you can reset the timer by repeatedly selecting the wallpaper again.

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure hyprland is installed: `sudo pacman -S hyprland`
- Make sure `git` is installed: `sudo pacman -S git`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/hyprwm/Hyprland) | [Arch Wiki](https://wiki.archlinux.org/title/Hyprland)

> [!IMPORTANT]
> Hyprland should be updated to latest (*v0.53.1 or higher*) for the config to properly work.  
> **If you already have Hyprland installed**: check your version with `hyprland -v` and either update or proceed with installation.


## 1. Backup existing config (if any)
```sh
[ -d ~/.config/hypr ] && mv ~/.config/hypr ~/.config/hypr.backup
```

## 2. Download and install hyprland configs
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set hypr && git checkout main && mv hypr ~/.config/ && cd ~ && rm -rf cybrland
```
↑ Unsure what this does? [Explanation](../INSTALL.md#How-sparse-checkout-works)  

## 3. Verify installation
```sh
ls -R ~/.config/hypr
```

You should see: `hyprland.conf`, `theme.conf`, `vars.conf`, `walls/` directory with `chyoda-2560x1440.png` and other pngs,  `scripts/` directory with `color_picker` and other scripts, `hypridle.conf`, `hyprlock.conf`, `hyprpaper.conf`, `hyprpicker.conf`, `pyprland.conf`,

Make all scripts executable:
```sh
chmod +x ~/.config/hypr/scripts/*
```

<details>
<summary>Expected file structure</summary>

```
~/.config/hypr/
├── hyprland.conf           # main settings
├── theme.conf              # theme settings
├── vars.conf               # variables used in theme
└── walls/                  # wallpapers
│   ├── chyoda-2560x1440.png
│   ├── ikebukuro-2560x1440.png
│   └── ...
└── scripts/                # wallpapers
│   ├── color_picker
│   ├── current_song
│   └── ...
├── hypridle.conf           # settings for idle
├── hyprlock.conf           # settings for screen lock
├── hyprpaper.conf          # backup settings for wallpapers
├── hyprpicker.conf         # settings for color picker
└── pyprland.conf           # settings for wifi/bluetooth scratchpad
```
</details>

## 4. Configure for your system
You'll need to change some settings in hyprland config to match your machine.

```sh
$EDITOR ~/.config/hypr/hyprland.conf
```

### a) Monitor setup
Check your monitor configuration:
```sh
hyprctl monitors
```

Example output:
```
Monitor DP-2 (ID 0):
	2560x1440@144Hz at 1920x0
Monitor HDMI-A-1 (ID 1):
	1920x1080@60Hz at 0x0
```

Edit monitor settings:
```sh
$EDITOR ~/.config/hypr/hyprland.conf
```

Find the `# === MONITORS ===` section and update:
```conf
$first = # Change according to `hyprctl monitors` output
# Example:
# $first = DP-1
# $second = DP-2
# $third = HDMI-A-1

monitor = $first,preferred,auto,1 # Change according to `hyprctl monitors` output
# Example:
# monitor = $first,2560x1440@144Hz,1920x0,1
```

Find the `# === WORKSPACES === #` section and update:

```conf
# First Monitor
workspace = 1, monitor:$second, default:true
...

# Second Monitor
workspace = 10, monitor:$first, default:true
...

# Third Monitor
#workspace = 19, monitor:$third
...
```

### b) Keyboard layout (optional)
```sh
$EDITOR ~/.config/hypr/hyprland.conf
```

Find `# === INPUT ===` and modify:
```conf
input {
    kb_layout = us,cz
    kb_options = compose:rctrl, level3:ralt_switch, grp:alt_space_toggle
    ...
}
```

### c) Keybinds (recommended)
Review and customize keybinds in `# === BINDS ===` section. The config includes organized sections for:
- Applications, Notifications, Bar
- Pickers/Launchers, Screenshots
- Window management (focus, move, resize)
- Workspaces, Monitors
- Media controls

### d) Autostart apps
```sh
$EDITOR ~/.config/hypr/scripts/apps
```
Here you can define which apps should start on boot. I use sleep to give the OS some breathing room after startup.
Comment out apps you don't want to launch on startup, add those you want.


### e) Essential services
```sh
$EDITOR ~/.config/hypr/scripts/services
```

These are essential services for Hyprland to function properly.
