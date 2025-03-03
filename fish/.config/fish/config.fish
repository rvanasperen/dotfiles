status is-interactive || return

set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings

set -gx EDITOR nvim
set -gx VISUAL nvim
