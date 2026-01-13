```
░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░░▒▓██████▓▒░░▒▓███████▓▒░░▒▓████████▓▒░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓█████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-waybar.png"/></td>
<p align="center">
  <em>waybar ↗ (top to bottom: secondary monitor, main monitor)</em>
</p>

> [!TIP]
> I included my own special tool for Waybar - if you hover over the red dot next between CPU temp and Notification center and scroll, you can adjust the brightness of your monitors (works on desktop via DDC/CI, OSD-free)

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure waybar is installed: `sudo pacman -S waybar`
- Make sure `git` is installed: `sudo pacman -S git`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/Alexays/Waybar) | [Arch Wiki](https://wiki.archlinux.org/title/Waybar)

## 1. Download waybar configs
```sh
#download waybar directory
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set waybar && git checkout main && mv waybar ~/.config/ && cd ~ && rm -rf cybrland
```
↑ Unsure what this does? [Explanation](../INSTALL.md#How-sparse-checkout-works)  

## 2. Verify installation
```sh
ls -R ~/.config/waybar
```

You should see: `config.jsonc`, `modules.jsonc`, `style.css`, `scripts/`, `svg/`

Make all scripts executable:
```sh
chmod +x ~/.config/waybar/scripts/*
```

> [!IMPORTANT]
> Keep the file structure intact - configs use relative paths to `modules.jsonc` and `svg/` files.  
> If waybar doesn't load, or doesn't have angled corners, verify the path matches your setup.  

<details>
<summary>Expected file structure</summary>

```
~/.config/waybar/
├── config.jsonc            # main settings
├── modules.jsonc           # module definitions
├── style.css               # visual styling (references svg/ files)
├── scripts/
│   ├── bright.sh           # brightness control (via mousescroll)
│   ├── bright-status.sh    # brightness values display
│   └── mediaplayer.py      # media player info
└── svg/                    # graphical elements (used in style.css)
    ├── gr0-left.svg
    ├── gr0-right.svg
    └── ...
```
</details>

## 3. Adjust settings
There are two bars in the config, only one shows up after installation.  
Intended use is for multi-monitor setups, but single-monitor users can switch waybar layouts.

### For multi-monitor setups:
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
$EDITOR ~/.config/waybar/config.jsonc
```
In the config file, uncomment BAR 2 and edit `"output"` in both bars according to `hyprctl monitors` output:
```jsonc
/* BAR 1 */
{
    "output": "YOUR-FIRST-MONITOR-NAME",
	/* Example:
	"output": "DP-2",
	*/
    ...
}
/* BAR 2 */
,{
    "output": "YOUR-SECOND-MONITOR-NAME",
	/* Example:
	"output": "HDMI-A-1",
	*/
    ...
}
```
### For switching waybar layouts:
Open config file:
```sh
$EDITOR ~/.config/waybar/config.jsonc
```
Uncomment BAR 2, comment out BAR 1.

## 4. Restart waybar
```sh
killall waybar && waybar
```
