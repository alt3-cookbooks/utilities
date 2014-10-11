# utilities

[![Build Status](https://travis-ci.org/alt3-cookbooks/utilities.svg)](https://travis-ci.org/alt3-cookbooks/utilities)

Various convenience recipes.

# Recipes

## Utilities::login_chdir

Extends user's ~/.bashrc to change directory after login.

### Attributes

- `node[:utilities][:login_chdir][:user]` - User to apply chdir to (defaults to `vagrant`)
- `node[:utilities][:login_chdir][:startup_file]` - Name of the user's startup file to modify (defaults to `'.bashrc'`)
- `node[:utilities][:login_chdir][:directory]` - Name of directory to cd to (defaults to `~`)
