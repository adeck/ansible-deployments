#!/usr/bin/env bash
#
# A library to make starting on new projects easier.
#

COMMON_ROLES=(ssh ferm fwknopd)
DEPLOY_HOME='../../shared'

# creates the symbolic links and directories all projects need
create() {
  # create the role's directory if name specified; otherwise assume we're in it
  [ $# -eq 1 ] && {
    mkdir "$1"
    cd "$1"
  }
  # create and link resources all projects need
  mkdir plays roles hosts
  _link host_vars
  _link group_vars
  _link ansible.cfg
  # ...including roles common to all projects.
  for role in ${COMMON_ROLES[@]} ; do
    lnrole "$role"
  done
}

# Used to link a given ansible inventory file to the current project
lnhost() {
  local dir="$DEPLOY_HOME"
  local file="hosts/$1"
  ln -s "../$dir/$file" "$file"
}

lnrole() {
  local dir="$DEPLOY_HOME"
  local file="roles/$1"
  ln -s "../$dir/$file" "$file"
}

#### Helper functions

_link() {
  local dir="$DEPLOY_HOME"
  ln -s "$dir/$1" "$1"
}

