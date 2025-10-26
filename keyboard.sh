#!/bin/bash
layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name == "at-translated-set-2-keyboard") | .active_keymap' | head -1)

case $layout in
    "Russian")
        echo '{"text": "🇷🇺", "tooltip": "Russian"}'
        ;;
    "English (US)")
        echo '{"text": "🇺🇸", "tooltip": "English"}'
        ;;
    *)
        echo '{"text": "'"$layout"'", "tooltip": "'"$layout"'"}'
        ;;
esac
