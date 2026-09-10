#!/usr/bin/env bash
# Symlink every skill in this repo into ~/.claude/skills. Add new buckets to the list below.
# Safe to re-run: refreshes existing links, removes links that point at skills
# this repo no longer has, and refuses to replace a real directory.
set -euo pipefail

repo="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$target"

linked=0
for bucket in productivity; do
  for skill in "$repo/skills/$bucket"/*/; do
    [ -f "$skill/SKILL.md" ] || continue
    name="$(basename "$skill")"
    dest="$target/$name"
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
      echo "skip  $name: $dest is a real directory, move it aside first" >&2
      continue
    fi
    ln -sfn "${skill%/}" "$dest"
    echo "link  $name -> $bucket"
    linked=$((linked + 1))
  done
done

# Drop links into this repo whose skill no longer exists.
for link in "$target"/*; do
  [ -L "$link" ] || continue
  dst="$(readlink "$link")"
  case "$dst" in
    "$repo"/*) [ -f "$dst/SKILL.md" ] || { rm "$link"; echo "unlink $(basename "$link")"; } ;;
  esac
done

echo "$linked skills linked into $target"
