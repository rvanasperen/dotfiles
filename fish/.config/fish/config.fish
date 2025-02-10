status is-interactive || return

if test -d /opt/homebrew
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
end

if test -d ~/.composer
    fish_add_path ~/.composer/vendor/bin
end

set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings

set -gx EDITOR nvim
set -gx VISUAL nvim
