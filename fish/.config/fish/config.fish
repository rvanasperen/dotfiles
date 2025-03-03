status is-interactive || return

set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings

if command -q eza
    set -U __fish_ls_command eza
end

set -gx EDITOR nvim
set -gx VISUAL nvim
