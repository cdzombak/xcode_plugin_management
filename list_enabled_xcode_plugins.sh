#!/bin/bash

# Quit if Xcode is running:
ps cx | grep -i xcode > /dev/null && echo "(INFO: Xcode is running)" && echo

XCODE_ACTIVE_PLUGIN_DIR=$HOME/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/

ls "$XCODE_ACTIVE_PLUGIN_DIR" | grep xcplugin
