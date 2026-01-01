# ---------------------------------------
# CYBRfish    fish shell config (part of cybrland)
# Project:    https://github.com/scherrer-txt/cybrland
# Author:     scherrer-txt   |   License:     GPL-3.0
# Source:     ~/.config/fish/config.fish
# ---------------------------------------

# Environment
set -x LANG en_US.UTF-8
set -x LC_TIME en_DK.UTF-8
set -gx EDITOR micro
set -gx VISUAL visual-studio-code-git
set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
set -gx STARSHIP_CONFIG ~/.config/starship.toml

set -gx TERM xterm-kitty
set -gx COLORTERM truecolor
set -gx MICRO_TRUECOLOR 1

# Optional flatpak caching
if not set -q FLATPAK_PATHS
    set -gx FLATPAK_PATHS (flatpak --installations)
end

enable_transience
function starship_transient_prompt_func
  starship module character
end
function starship_transient_rprompt_func
    starship module custom.time_arrow
    starship module custom.transient_time
end
starship init fish | source
zoxide init fish | source
