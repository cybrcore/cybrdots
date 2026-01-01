# Installation Guide
> [!IMPORTANT]
> Terminal-first approach: This guide uses the command line extensively. Every command is explained and copy-paste ready. If you're new to terminals, this is a great opportunity to learn - by the end, you'll be more confident navigating your system.
> 
> Most tools used in Cybrland are TUI/CLI - fast, lightweight, and fitting the aesthetic.  
> (*TUI = Text UI, keyboard navigation in terminal; CLI = Command-line, pure terminal commands; GUI = Graphical UI, mouse-driven, visual windows*)

## Content
- [Prerequisites & Setup](#prerequisites--setup)
  1. [Install base dependencies](#1-install-base-dependencies)
  2. [Text editor setup](#2-text-editor-setup)
  3. [ANSI color dependency](#3-ansi-color-dependency)
  4. [Backup existing configs](#4-backup-existing-configs)
  5. [Review autostart services](#5-review-autostart-services)
  6. [Optional: Test in isolation](#6-optional-test-in-isolation)
  7. [Recommended: Create a revert script](#7-recommended-create-a-revert-script)
- [Installation](#installation-methods)
  - [Instalation Order](#instalation-order)
  - [Method 1: Individual Components (Recommended)](#method-1-individual-components-recommended)
  - [Method 2: Full Repository (Power Users)](#method-2-full-repository-power-users)
- [Post-installation Verification](#post-installation-verification)
- [Troubleshooting](#troubleshooting)

## Prerequisites & Setup
### 1. Install base dependencies
On Arch Linux:
```sh
# Essential tools
sudo pacman -S kitty fish hyprland waybar rofi swaync

# Font
curl -L https://github.com/ryanoasis/nerd-fonts/releases/latest/download/GeistMono.zip -o GeistMono.zip
mkdir -p ~/.local/share/fonts
unzip GeistMono.zip -d ~/.local/share/fonts/GeistMono
fc-cache -fv

# Optional utilities
sudo pacman -S broot btop cava firefox fzf lm_sensors micro nvtop starship yazi git fastfetch

# Hardware monitoring setup
sudo sensors-detect
```

### 2. Text editor setup
You'll need a terminal text editor for configuration files. This guide uses $EDITOR as a placeholder.
Check what you have set:
```sh
echo $EDITOR
echo $VISUAL
```
If nothing prints, set them now (using fish):
```sh
# Quick edits in terminal
set -Ux EDITOR micro

# Full IDE/editor (can be resource-intensive)
set -Ux VISUAL code
```
Choose any editor you prefer (nano, vim, neovim). Just make sure it's installed first.

### 3. ANSI color dependency

> [!CAUTION]
> Critical setup step: Programs like btop, broot, fzf, yazi, and fish rely on your terminal's ANSI color palette. Configure kitty first, or colors will be incorrect.

#### Installation order:
1. Install kitty → kitty setup
2. Configure ANSI colors (included in kitty config)
3. Install other programs

#### Verify colors are working:
```sh
# Should show 16 colored bars labeled COLOR 0 through COLOR 15
for i in (seq 0 15)
	echo -e "\e[48;5;$i""m  COLOR $i  \e[0m"
end
```
If you use a different terminal, extract ANSI values from [CYBRkitty](./kitty/CYBRkitty.conf) and apply them to your terminal emulator. Make sure your terminal of choice supports truecolor and transparency.

### 4. Backup existing configs
Before installing, complete these steps to avoid conflicts:
```sh
mkdir -p ~/.backup_configs
cp -r ~/.config/hypr ~/.backup_configs/hypr 2>/dev/null
cp -r ~/.config/kitty ~/.backup_configs/kitty 2>/dev/null
cp -r ~/.config/waybar ~/.backup_configs/waybar 2>/dev/null
cp -r ~/.config/rofi ~/.backup_configs/rofi 2>/dev/null
cp -r ~/.config/btop ~/.backup_configs/btop 2>/dev/null
```
Easy rollback if something breaks.

### 5. Review autostart services
These dotfiles include systemd user services for:
- Wallpaper rotation daemon
- Idle/lock management (hypridle)
- Notification daemon (swaync)
- Status bar (waybar)

Check for conflicts with existing services:
```sh
systemctl --user list-units --type=service | grep -E 'idle|lock|notify|bar|wallpaper'
```
### 6. Optional: Test in isolation
Launch Hyprland with a test config before applying permanently:
```sh
cp -r ~/.config/hypr ~/.config/hypr_test
Hyprland --config ~/.config/hypr_test/hyprland.conf
```
### 7. Recommended: Create a revert script
Quick recovery if Hyprland won't start:
```sh
cat > ~/.local/bin/revert-hypr << 'EOF'
#!/usr/bin/env bash
mv ~/.config/hypr ~/.config/hypr_broken
cp -r ~/.backup_configs/hypr ~/.config/hypr
echo "Reverted to backup config"
EOF

chmod +x ~/.local/bin/revert-hypr
```
## Installation
### Instalation Order
Recommended sequence to avoid dependency issues:

1. **kitty** - Terminal emulator (provides ANSI colors for everything else)
2. **fish** - Shell (optional but recommended)
3. **hyprland** - Window manager
4. **waybar** + **swaync** + **rofi** - UI components
5. Everything else - Utilities, themes, extras

Each component has its own setup guide.

### Method 1: Individual Components (Recommended)
Download only what you need using sparse checkout. See component-specific guides:
- [Hyprland](./hypr/readme.md)
- [Waybar](./waybar/readme.md)
- [Kitty](./kitty/readme.md)
- ...  

#### How sparse checkout works
```sh
# 1. Clone repository without files and commit history (metadata only)
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git

# 2. Enter repository
cd cybrland

# 3. Enable sparse checkout
git sparse-checkout init --cone

# 4. Select which directory to download
git sparse-checkout set foo

# 5. Download selected files
git checkout main

# 6. Move to your config
mv foo ~/.config/

# 7. Clean up
cd ~ && rm -rf cybrland

# Never skip step 7, because:
# - Removes git repository and history
# - Prevents accidental commits under wrong identity
# - Saves disk space
# - You only need the config files, not git metadata
```
I provided a one-line version in each `readme.md`, which you can copy & paste into your terminal, and it looks like this:
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/scherrer-txt/cybrland.git && cd cybrland && git sparse-checkout init --cone && git sparse-checkout set foo && git checkout main && mv foo ~/.config/ && cd ~ && rm -rf cybrland
```

### Method 2. Full Repository (Power Users)
Download all configs at once:

```sh
git clone --depth=1 https://github.com/scherrer-txt/cybrland.git
cd cybrland
rm -rf assets stylus .git

# After download:
# - Remove stylus, assets, and .git to save ~170 MB (not needed for the setup)
# - Browse individual component directories and follow their readme.md files
```

## Post-installation Verification
After setup, test these components:  

- **Visual/UI**:  
  - [ ] Waybar displays correctly (modules, colors, icons)  
  - [ ] Rofi launchers work (app launcher, power menu, etc)  
  - [ ] Kitty colors match screenshots  
  - [ ] Window decorations (blur, transparency, borders)  
- **Functionality**:  
  - [ ] Keybinds respond (try SUPER+ENTER for terminal)  
  - [ ] Wallpaper rotation works  
  - [ ] Screen lock triggers on idle  
  - [ ] Hardware monitoring (CPU/GPU/temps in waybar)  
  - [ ] Audio controls (volume, media playback)  

## Troubleshooting
| Issue | Solution |
|------------|--------|
| Wrong colors | Verify kitty config loaded: `kitty --debug-config \| grep color` |
| Waybar missing modules | Check `journalctl --user -u waybar` for errors |
| Keybinds not working | Verify Hyprland loaded config: `hyprctl version` |
| Services not starting | Check `systemctl --user status [service-name]` |
