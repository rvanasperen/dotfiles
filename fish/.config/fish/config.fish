status is-interactive || return

fish_config theme choose "Catppuccin Frappe"

set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings

if command -q eza
    set -U __fish_ls_command eza
end

set -gx EDITOR nvim
set -gx VISUAL nvim

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
