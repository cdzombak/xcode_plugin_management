# Xcode Plugin Management scripts

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

Some quick scripts to backup/disable, re-enable, or list all your Xcode plugins. Particularly useful when switching between stable and beta releases.

## Configuration

These scripts will store your plugins in / restore them from the directory specified in the environment variable `XCODE_PLUGIN_STORAGE_DIR`. If that is not set, they will default to `$HOME/xcode_plugins` (and let you know).

## Usage

### `enable_xcode_plugins.sh`

This copies all plugins from your `XCODE_PLUGIN_STORAGE_DIR` (see Configuration, above) to Xcode's plugins directory.

It refuses to run if Xcode is running.

### `disable_xcode_plugins.sh`

This makes a backup copy of all enabled Xcode plugins into your `XCODE_PLUGIN_STORAGE_DIR` (without removing anything already in `XCODE_PLUGIN_STORAGE_DIR`). It then removes all enabled Xcode plugins.

It refuses to run if Xcode is running.

### `list_enabled_xcode_plugins.sh`

Does pretty much exactly what you'd expect.
