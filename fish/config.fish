# ---------------------------------------
# CYBRfish    fish shell theme & config (part of cybrland)
# Project:    https://github.com/scherrer-txt/cybrland
# Author:     scherrer-txt   |   License:     GPL-3.0
# Source:     ~/.config/fish/config.fish
# ---------------------------------------

# Environment
set -gx EDITOR micro
set -gx VISUAL visual-studio-code-git
set -gx STARSHIP_CONFIG ~/.config/starship.toml

set -gx TERM xterm-kitty
set -gx COLORTERM truecolor
set -gx MICRO_TRUECOLOR 1

# Theme
## Autosuggestion
set -g fish_color_autosuggestion 4D5A80

## Cancel
set -g fish_color_cancel F24848 --reverse

## Commands & syntax
set -g fish_color_command 3051F2
set -g fish_color_comment 4D5A80
set -g fish_color_cwd 30F291
set -g fish_color_cwd_root F24848
set -g fish_color_end F24848

## Errors
set -g fish_color_error F24848 --bold --background=631F21

## Misc syntax
set -g fish_color_escape 4D5A80
set -g fish_color_history_current --bold
set -g fish_color_host A130F2
set -g fish_color_host_remote A130F2
set -g fish_color_keyword A130F2
set -g fish_color_normal F24848
set -g fish_color_operator 30F291
set -g fish_color_param 29BECC
set -g fish_color_quote F2D230
set -g fish_color_redirection F24848 --bold

## Search / selection
set -g fish_color_search_match 30F291 --bold --background=0C3423
set -g fish_color_selection 29BECC --bold --background=0B292F

## Status / user
set -g fish_color_status F24848
set -g fish_color_user 29BECC
set -g fish_color_valid_path --underline

## Pager
set -g fish_pager_color_completion normal
set -g fish_pager_color_description yellow -i
set -g fish_pager_color_prefix normal --bold --underline
set -g fish_pager_color_progress brwhite --background=cyan
set -g fish_pager_color_selected_background -r

## Key bindings
set -U fish_key_bindings fish_default_key_bindings

# Optional flatpak caching
if not set -q FLATPAK_PATHS
    set -gx FLATPAK_PATHS (flatpak --installations)
end

starship init fish | source
enable_transience
function starship_transient_prompt_func
  starship module character
end
function starship_transient_rprompt_func
    starship module custom.time_arrow
    starship module custom.transient_time
end
zoxide init fish | source
