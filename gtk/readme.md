```
 ░▒▓██████▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░        ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒▒▓███▓▒░ ░▒▓█▓▒░   ░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓██████▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-gtk.png"/></td>

> [!CAUTION]
> This theme is in early stage. Major refactor is in progress. Use at your own risk, ideally only if you plan to [contribute](../CONTRIBUTING.md).

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure GTK is installed: `sudo pacman -S gtk-2.0 gtk-3.0`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet

## 1. Download GTK Theme
```sh
# Download only the gtk directory and install the CYBRgtk theme by creating ~/.themes directory and moving theme inside the ~/.themes dir
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set gtk && git checkout main && mkdir -p ~/.themes && mv gtk/oomox-CYBRgtk ~/.themes/ && cd ~ && rm -rf cybrland
```
↑ Unsure what this does? [Explanation](../INSTALL.md#How-sparse-checkout-works)  

## 2. Verify installation
```sh
ls -R ~/.themes/oomox-CYBRgtk
```

You should see: `assets/`, `cinnamon/`, `gtk-2.0/`, `gtk-3.0/`, `gtk-3.20/`, `metacity-1/`, `openbox-3/`, `unity/`, `xfwm4/` and `index.theme`

## 3. Apply
### For Hyprland users
Open hyprland.conf:
```sh
$EDITOR ~/.config/hypr/hyprland.conf
```
Add `env = GTK_THEME, oomox-CYBRgtk` into Themes inside ENV section:
```conf
# === THEME ==# #
    ..
# === ENV === #
    # XDG
    ..
    # QT
    ...
    # Tearing
	...
    # Themes
    env = GTK_THEME, oomox-CYBRgtk
```
### For non-Hyprland users (GNOME, XFCE, Cinnamon, etc.)
Apply the theme using your desktop environment’s GTK settings tool.

**Examples**:
- **GNOME**: Use GNOME Tweaks → Appearance → Legacy Applications → Select `oomox-CYBRgtk`  
- **XFCE**: Settings → Appearance → Style → Select `oomox-CYBRgtk`  
- **Cinnamon**: System Settings → Themes → Controls → Select `oomox-CYBRgtk`  

No environment variables are required.

## 4. Restart GTK apps or log out and back in
