# ---------------------------------------
# CYBRfish    fish shell theme (part of cybrland)
# Project:    https://github.com/scherrer-txt/cybrland
# Author:     scherrer-txt   |   License:     GPL-3.0
# Source:     ~/.config/fish/CYBRfish.fish
# ---------------------------------------

# Autosuggestion
set -U fish_color_autosuggestion 631F21

# Cancel
set -U fish_color_cancel F24848 --reverse

# Commands & syntax
set -U fish_color_command 3051F2
set -U fish_color_comment 4D5A80
set -U fish_color_cwd 30F291
set -U fish_color_cwd_root F24848
set -U fish_color_end F24848

# Errors
set -U fish_color_error F24848 --bold --background=631F21

# Misc syntax
set -U fish_color_escape 4D5A80
set -U fish_color_history_current --bold
set -U fish_color_host A130F2
set -U fish_color_host_remote A130F2
set -U fish_color_keyword A130F2
set -U fish_color_normal F24848
set -U fish_color_operator 30F291
set -U fish_color_param 29BECC
set -U fish_color_quote F2D230
set -U fish_color_redirection F24848 --bold

# Search / selection
set -U fish_color_search_match 30F291 --bold --background=0C3423
set -U fish_color_selection 29BECC --bold --background=0B292F

# Status / user
set -U fish_color_status F24848
set -U fish_color_user 29BECC
set -U fish_color_valid_path --underline

# Pager
set -U fish_pager_color_completion normal
set -U fish_pager_color_description yellow -i
set -U fish_pager_color_prefix normal --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_pager_color_selected_background -r

# Key bindings
set -U fish_key_bindings fish_default_key_bindings