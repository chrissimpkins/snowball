#!/bin/bash

TARGET_DIR="${HOME}/Library/Application Support/Mou/Themes/"
INSTALL_FILE="Snowball.txt"
INSTALL_MSG="The Snowball Markdown editor theme was successfully installed.  You can select this theme in Mou Preferences > Themes > Select Theme."

if [ -d "$TARGET_DIR" ]; then
  cp "$INSTALL_FILE" "$TARGET_DIR"
  echo "$INSTALL_MSG"
else
  echo "Creating the install directory path..."
  mkdir -p "$TARGET_DIR"
  echo "Done. Installing '$INSTALL_FILE'..."
  cp "$INSTALL_FILE" "$TARGET_DIR"
  echo "$INSTALL_MSG"
fi
exit 0