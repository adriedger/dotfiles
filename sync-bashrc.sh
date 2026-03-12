#!/bin/bash
# Replaces the "## Andre's settings" section in ~/.bashrc
# with the contents of ~/dotfiles/.bashrc

set -euo pipefail

BASHRC="$HOME/.bashrc"
DOTFILE="$HOME/dotfiles/.bashrc"
MARKER="## Andre's settings"

if [[ ! -f "$DOTFILE" ]]; then
    echo "Error: $DOTFILE not found" >&2
    exit 1
fi

if ! grep -qF "$MARKER" "$BASHRC"; then
    echo "Error: marker '$MARKER' not found in $BASHRC" >&2
    exit 1
fi

# Everything before the marker line
head_content=$(sed "/$MARKER/,\$d" "$BASHRC")

# New settings from dotfiles (already includes the marker)
new_settings=$(cat "$DOTFILE")

# Write it back
printf '%s\n%s\n' "$head_content" "$new_settings" > "$BASHRC"

echo "Updated $BASHRC with settings from $DOTFILE"
