#!/bin/bash
# Replaces only the delimited "## Andre's settings" block in ~/.bashrc
# with the contents of ~/dotfiles/.bashrc, leaving everything else untouched.

set -euo pipefail

BASHRC="$HOME/.bashrc"
DOTFILE="$HOME/dotfiles/.bashrc"
START_MARKER="## Andre's settings"
END_MARKER="## End Andre's settings"

if [[ ! -f "$DOTFILE" ]]; then
    echo "Error: $DOTFILE not found" >&2
    exit 1
fi

if ! grep -qF "$START_MARKER" "$BASHRC"; then
    echo "Error: start marker '$START_MARKER' not found in $BASHRC" >&2
    exit 1
fi

if ! grep -qF "$END_MARKER" "$BASHRC"; then
    echo "Error: end marker '$END_MARKER' not found in $BASHRC" >&2
    exit 1
fi

# Content before the start marker (exclusive)
head_content=$(sed "/^## Andre's settings/,\$d" "$BASHRC")

# Content after the end marker (exclusive)
tail_content=$(sed "1,/^## End Andre's settings/d" "$BASHRC")

# New settings from dotfiles (includes both markers)
new_settings=$(cat "$DOTFILE")

# Write it back: head + delimited block + tail
printf '%s\n%s\n%s\n' "$head_content" "$new_settings" "$tail_content" > "$BASHRC"

echo "Updated $BASHRC with settings from $DOTFILE"
