if test -d /opt/homebrew
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin

    set -gx HOMEBREW_NO_ENV_HINTS 1
end

