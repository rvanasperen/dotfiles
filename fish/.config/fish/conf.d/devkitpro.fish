test -d /opt/devkitpro || return

set -gx DEVKITPRO /opt/devkitpro
set -gx DEVKITARM $DEVKITPRO/devkitARM
set -gx DEVKITPPC $DEVKITPRO/devkitPPC

fish_add_path $DEVKITARM/bin
fish_add_path $DEVKITPRO/tools/bin
