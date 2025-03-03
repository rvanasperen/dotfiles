#!/usr/bin/env sh

REQUIRED_BINARIES="
autojump
bat|batcat
curl
eza
fish
fzf
git
lazygit
rg
stow
"

MISSING=0

echo "$REQUIRED_BINARIES" | while IFS= read -r entry; do
    [ -z "$entry" ] && continue

    found=0
    IFS='|'
    for binary in $entry; do
        if command -v "$binary" >/dev/null 2>&1; then
            echo "✅ Found: $binary"
            found=1
            break
        fi
    done

    if [ $found -eq 0 ]; then
        echo "❌ Missing: $entry (at least one required)"
        MISSING=1
    fi
done

if [ $MISSING -eq 1 ]; then
    echo "Some required binaries are missing. Please install them."
    exit 1
fi

echo "All required binaries are installed!"
exit 0
