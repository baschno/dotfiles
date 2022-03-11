#!/usr/bin/env bash

export COLOR_PALETTE="$COLOR_01:$COLOR_02:$COLOR_03:$COLOR_04:$COLOR_05:$COLOR_06:$COLOR_07:$COLOR_08:$COLOR_09:$COLOR_10:$COLOR_11:$COLOR_12:$COLOR_13:$COLOR_14:$COLOR_15:$COLOR_16"

gsettings set io.elementary.terminal.settings palette "$COLOR_PALETTE"
gsettings set io.elementary.terminal.settings foreground "$FOREGROUND_COLOR"
gsettings set io.elementary.terminal.settings background "$BACKGROUND_COLOR"
gsettings set io.elementary.terminal.settings cursor-color "$CURSOR_COLOR"