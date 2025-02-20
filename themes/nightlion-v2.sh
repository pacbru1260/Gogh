#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#4c4c4c"           # HOST
export COLOR_02="#bb0000"           # SYNTAX_STRING
export COLOR_03="#04f623"           # COMMAND
export COLOR_04="#f3f167"           # COMMAND_COLOR2
export COLOR_05="#64d0f0"           # PATH
export COLOR_06="#ce6fdb"           # SYNTAX_VAR
export COLOR_07="#00dadf"           # PROMP
export COLOR_08="#bbbbbb"           #

export COLOR_09="#555555"           #
export COLOR_10="#ff5555"           # COMMAND_ERROR
export COLOR_11="#7df71d"           # EXEC
export COLOR_12="#ffff55"           #
export COLOR_13="#62cbe8"           # FOLDER
export COLOR_14="#ff9bf5"           #
export COLOR_15="#00ccd8"           #
export COLOR_16="#ffffff"           #

export BACKGROUND_COLOR="#171717"   # Background Color
export FOREGROUND_COLOR="#bbbbbb"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Nightlion V2"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Gogh-Co/Gogh/master"}


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
