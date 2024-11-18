# shellcheck shell=bash
# Paths

export TMUX_POWERLINE_DIR_LIB="$TMUX_POWERLINE_DIR_HOME/lib"
export TMUX_POWERLINE_DIR_SEGMENTS="$TMUX_POWERLINE_DIR_HOME/segments"
export TMUX_POWERLINE_DIR_TEMPORARY="${TMPDIR:-/tmp/tmux-powerline_${USER}}"
export TMUX_POWERLINE_DIR_THEMES="$TMUX_POWERLINE_DIR_HOME/themes"
if [ -z "$TMUX_POWERLINE_CONFIG_FILE" ]; then
	export TMUX_POWERLINE_CONFIG_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/config.sh"
fi
export TMUX_POWERLINE_CONFIG_FILE_DEFAULT="${TMUX_POWERLINE_CONFIG_FILE}.default"

TMUX_POWERLINE_CONFIG_DIR=$(dirname "$TMUX_POWERLINE_CONFIG_FILE")
export TMUX_POWERLINE_CONFIG_DIR

if [ ! -d "$TMUX_POWERLINE_CONFIG_DIR" ] && [ ! -L "$TMUX_POWERLINE_CONFIG_DIR" ]; then
	mkdir -p "$TMUX_POWERLINE_CONFIG_DIR"
fi

if [ ! -d "$TMUX_POWERLINE_DIR_TEMPORARY" ]; then
	mkdir "$TMUX_POWERLINE_DIR_TEMPORARY"
fi
