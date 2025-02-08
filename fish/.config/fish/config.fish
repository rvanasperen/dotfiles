status is-interactive || return

if test -d /opt/homebrew; then
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
end

set -U fish_greeting

set -gx EDITOR nvim
set -gx VISUAL nvim
