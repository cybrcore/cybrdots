```
░▒▓████████▓▒░▒▓█▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓██████▓▒░ ░▒▓█▓▒░▒▓███████▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░  
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░      ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-firefox.png"/></td>

> [!CAUTION]
> This theme is still work in progress. Major refactor is in progress. Use at your own risk.
> Theme uses deprecated version of [Cybrcolors](https://github.com/scherrer-txt/cybrcolors).

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure firefox is installed: `sudo pacman -S firefox`
- Make sure Sidebery is [installed](https://addons.mozilla.org/en-US/firefox/addon/sidebery/)
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet

## 1. Download `userChrome.css` and `sideberry.css`
  - `userChrome.css` contains all **decoration** setting
  - `sideberry.css` contains all **decorations** for Sidebery, paste its content into its Style Editor

## 2. Edit about:config
- Open Firefox, CTRL+T, paste `about:config`, confirm
- Set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true` (*enables userChrome.css to be loaded*)
- Set `browser.tabs.allow_transparent_browser` to `true` (*this enables transparency for tabs*)
- Set `widget.transparent-windows` to `true` (*this enables transparency for Sidebery*)

## 3. Restart Firefox
```sh
pkill firefox && firefox
```
