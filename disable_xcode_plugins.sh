#!/bin/bash

# Quit if Xcode is running:
ps cx | grep -i xcode > /dev/null && echo "Xcode is running; please quit it." && exit

# Use a default storage directory if none is set:
if [ -z "$XCODE_PLUGIN_STORAGE_DIR" ]; then
    XCODE_PLUGIN_STORAGE_DIR=$HOME/xcode_plugins
    echo INFO: Using default plugin storage directory: $XCODE_PLUGIN_STORAGE_DIR
fi

XCODE_ACTIVE_PLUGIN_DIR=$HOME/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/

cp -R -p "$XCODE_ACTIVE_PLUGIN_DIR"* "$XCODE_PLUGIN_STORAGE_DIR" || exit
rm -rf "$XCODE_ACTIVE_PLUGIN_DIR"* && echo "Success."
