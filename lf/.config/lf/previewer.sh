#!/usr/bin/env sh

FILE="$1"
MIMETYPE=$(file --mime-type -Lb "$FILE")

case "$MIMETYPE" in
  image/*)
    chafa "$FILE" --size=50x20
    ;;

  text/*)
    if command -v batcat >/dev/null 2>&1; then
      batcat --color=always --style=plain "$FILE"
    elif command -v bat >/dev/null 2>&1; then
      bat --color=always --style=plain "$FILE"
    else
      echo "Derp"
      cat "$FILE"
    fi
    ;;

  *)
    echo "No preview available"
    ;;
esac

