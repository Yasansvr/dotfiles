#!/usr/bin/env bash
# Outputs JSON for Waybar custom module.
# {icon} is taken from "format-icons" based on this "alt" field.

# If you only want Spotify, set: player="spotify"
player="$(playerctl -l 2>/dev/null | head -n1)"

if [[ -n "$player" ]]; then
  status="$(playerctl -p "$player" status 2>/dev/null | tr -d '\r')"
  text="$(playerctl -p "$player" metadata --format '{{artist}} - {{title}}' 2>/dev/null)"
else
  status=""
  text=""
fi

[[ -z "$status" ]] && status="Stopped"
[[ -z "$text" ]] && text="No media"

case "$status" in
  Playing) alt="pause"  ;;
  Paused)  alt="play" ;;
  *)       alt="none"  ;;
esac

printf '{"text":"%s","alt":"%s"}\n' "$text" "$alt"
