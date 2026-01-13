
```
░▒▓███████▓▒░ ░▒▓███████▓▒░▒▓███████▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░        
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░        
░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓██████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░▒▓███████▓▒░
```

<img src="../assets/inspiration/insp-rss.png"/></td>
<p align="center">
  <em>newsboat ↗ (feed)</em>
</p>
<img src="../assets/inspiration/insp-rss3.png"/></td>
<p align="center">
  <em>newsboat ↗ (article)</em>
</p>

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](../INSTALL.md#prerequisites--setup) is installed
- Make sure newsboat is installed: `sudo pacman -S newsboat`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Github](https://github.com/newsboat/newsboat) | [Arch wiki](https://wiki.archlinux.org/title/Newsboat)

## 1. Create config file

```sh
$EDITOR ~/.newsboat/config
```

## 2. Insert [config.newsboat](../newsboat/config)

## 3. Create url file

```sh
$EDITOR ~/.newsboat/urls

# Paste this section inside:
"~./newsboat/feed"
"​├─  /tag"
https://url.com/feed "​├─  /tag"

"​├─  /tag/nested"
https://url.com/feed "‌│  ├──  /tag/nested"
```

## 4. How it works
Feed view:
- `"~./newsboat/feed"` - Decorative element, optional
- `"​├─  /tag"` - Essentialy an empty feed, serves as a separator of tagged feeds

Tag view:
- `https://url.com/feed "​├─  /tag"` - Tag contains tree elements so that in tag view (T key), the tree structure is achieved
- `"​├─  /tag/nested"` - Tags like "/tag/nested" are NOT real nesting - just visual workaround
- Tree characters inside tags are purely cosmetic and don't affect functionality
