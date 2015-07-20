#!/usr/bin/env bash
#
# A library to make starting on new projects easier.
#

DEPLOY_HOME='../../shared'

# Creates the symbolic links and directories all projects need
create() {
  [ $# -eq 1 ] && {
    mkdir "$1"
    cd "$1"
  }
  mkdir plays roles hosts
  _link host_vars
  _link group_vars
}

# Used to link a given ansible inventory file to the current project
link_host() {
  local dir="$DEPLOY_HOME"
  ln -s "$dir/hosts/$1" "hosts/$1"
}

#### Helper functions

_link() {
  local dir="$DEPLOY_HOME"
  ln -s "$dir/$1" "$1"
}

