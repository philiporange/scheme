#!/bin/bash

# Default paths
CONFIG_PATH="~/.config/nvim"
INIT_FILE="init.vim"

# Construct the full path and expand the tilde
INIT_PATH="${CONFIG_PATH}/${INIT_FILE}"
INIT_PATH="${INIT_PATH/#\~/$HOME}"

# Default colorscheme
COLORSCHEME=""

# Default background
BACKGROUND=""

# Check if arguments are set
for arg in "$@"
do
    case $arg in
        --light)
        BACKGROUND="light"
        shift # Remove --light from processing
        ;;
        --dark)
        BACKGROUND="dark"
        shift # Remove --dark from processing
        ;;
        *)
        OTHER_ARGUMENTS+=("$1")
        shift # Remove generic argument from processing
        ;;
    esac
done

# Check if non-flag argument is present
if [ ${#OTHER_ARGUMENTS[@]} -ge 1 ]; then
    COLORSCHEME=${OTHER_ARGUMENTS[0]}
fi

# Update the colorscheme line if a colorscheme was provided
if [ -n "$COLORSCHEME" ]; then
  sed -i "s/^\s*colorscheme\s\+.*/colorscheme ${COLORSCHEME}/" $INIT_PATH
fi

# If a flag for the background was set, update the background line
if [ -n "$BACKGROUND" ]; then
  sed -i "s/^\s*set\s\+background=.*/set background=${BACKGROUND}/" $INIT_PATH
fi


exit 0
