if test -d /opt/devkitpro
    set -gx DEVKITPRO /opt/devkitpro
    set -gx DEVKITARM $DEVKITPRO/devkitARM

    fish_add_path $DEVKITARM/bin
end
