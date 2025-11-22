![Hyprland banner](../assets/hyprland.png)

# Cybrland (WIP)
Theme for Hyprland window manager inspired by the color palette popularized by **Cyberpunk 2077**.

> [!CAUTION]
> This theme is still work in progress and was not made with other users in mind. 

## Result
<img src="../assets/inspiration/insp-colors.png" width="800"/></td>

## What to do
### 1. Install `GeistMono Nerd Font` ([from here](https://www.nerdfonts.com/font-downloads))

### 2. Download `hyprland.conf`, `theme.conf` and `vars.conf`
  - `hyprland.conf` contains all **functional** setting, and is linked to`theme.conf`
  - `theme.conf` contains all **decorations**, and is linked to `vars.conf`
  - `vars.conf` contains all **variables** (*colors, gaps, font, blur etc.*)

### 3. File structure should look like this
```code
hypr/
  hyprland.conf
  theme/
    theme.conf
    vars.conf
```
### 4. Create a backup of your old config and theme

## Random wallpaper
> This script cycles wallpapers in a pseudo-random pattern (never shows the same wallpaper twice in a row, hence pseudo-random).

### 1. Copy [wallpaper-daemon](../hyprland/scripts/wallpaper-daemon) script inside your `hypr/scripts` folder

### 2. Make it executable
```sh
chmod +x ~/.config/hypr/scripts/wallpaper-daemon
```

### 3. Create a daemon service

```sh
micro ~/.config/systemd/user/wallpaper-daemon.service
```

### 4. Paste inside

```toml
[Unit]
Description=Wallpaper rotation daemon for hyprpaper
After=hyprpaper.service suspend.target
Requires=hyprpaper.service

[Service]
Type=simple
ExecStart=%h/.config/hypr/scripts/wallpaper-daemon
Restart=always
RestartSec=1
KillMode=control-group

[Install]
WantedBy=default.target
```

### 5. Run

```sh
systemctl --user daemon-reload
systemctl --user enable --now wallpaper-daemon.service
```

After any future changes to the script:

```sh
systemctl --user daemon-reload
```