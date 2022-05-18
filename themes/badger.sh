#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#656868"           # HOST
export COLOR_02="#F28B86"           # SYNTAX_STRING
export COLOR_03="#86B187"           # COMMAND
export COLOR_04="#E0D063"           # COMMAND_COLOR2
export COLOR_05="#8AC6F2"           # PATH
export COLOR_06="#BF93C3"           # SYNTAX_VAR
export COLOR_07="#65A399"           # PROMP
export COLOR_08="#FBF9F3"           #

export COLOR_09="#656868"           #
export COLOR_10="#F28B86"           # COMMAND_ERROR
export COLOR_11="#86B187"           # EXEC
export COLOR_12="#E0D063"           #
export COLOR_13="#8AC6F2"           # FOLDER
export COLOR_14="#BF93C3"           #
export COLOR_15="#65A399"           #
export COLOR_16="#FBF9F3"           #

export BACKGROUND_COLOR="#171717"   # Background Color
export FOREGROUND_COLOR="#FBF9F3"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Badger"
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
