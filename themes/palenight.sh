#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#292d3e"           # Black
export COLOR_02="#ff5370"           # Red
export COLOR_03="#c3e88d"           # Green
export COLOR_04="#ffcb6b"           # Yellow
export COLOR_05="#82b1ff"           # Blue
export COLOR_06="#c792ea"           # Magenta
export COLOR_07="#89ddff"           # Cyan
export COLOR_08="#bfc7df"           # Light gray

export COLOR_09="#3e4462"           # Dark gray
export COLOR_10="#be5046"           # Light Red
export COLOR_11="#c3e88d"           # Light Green
export COLOR_12="#f78c6c"           # Light Yellow
export COLOR_13="#82b1ff"           # Light Blue
export COLOR_14="#c792ea"           # Light Magenta
export COLOR_15="#95c4ce"           # Light Cyan
export COLOR_16="#697098"           # White

export BACKGROUND_COLOR="#292d3e"   # Background Color
export FOREGROUND_COLOR="#bfc7d5"   # Foreground Color (text)
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor color
export PROFILE_NAME="palenight"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
