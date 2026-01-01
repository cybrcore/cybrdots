```
░▒▓████████▓▒░▒▓████████▓▒░▒▓████████▓▒░ 
░▒▓█▓▒░             ░▒▓█▓▒░▒▓█▓▒░        
░▒▓█▓▒░           ░▒▓██▓▒░░▒▓█▓▒░        
░▒▓██████▓▒░    ░▒▓██▓▒░  ░▒▓██████▓▒░   
░▒▓█▓▒░       ░▒▓██▓▒░    ░▒▓█▓▒░        
░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░        
░▒▓█▓▒░      ░▒▓████████▓▒░▒▓█▓▒░        
```

## Result
<img src="../assets/inspiration/insp-fzf.png"/></td>

## Steps
### 0. Before you start
- Make sure kitty is installed: `sudo pacman -S kitty` and theme is applied
- Make sure fzf is installed: `sudo pacman -S fzf`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet

### 1. Apply the theme
```sh
set -Ux FZF_DEFAULT_OPTS "\
  --color=fg:#F24848,fg+:#F24848,bg:-1,bg+:#331215 \
  --color=hl:#29BECC,hl+:#F2D230,info:#3061F2,marker:#29BECC \
  --color=prompt:#29BECC,spinner:#3061F2,pointer:#F24848,header:#4D5A80 \
  --color=border:#631F21,label:#ffffff,query:#29BECC"
```