#!/usr/bin/env bash
#
# A library to make starting on new projects easier.
#

COMMON_ROLES=(centos selinux ssh ferm fwknopd)
DEPLOY_HOME='../../shared'

# creates the symbolic links and directories all projects need
create() {
  # create the role's directory if name specified; otherwise assume we're in it
  if [ $# -ne 1 ]
  then
    echo >&2 "You must provide the name of the new project to create."
    exit 1
  fi
  mkdir "$1"
  (
    cd "$1"
    # create and link resources all projects need
    mkdir -p plays roles inventory/group_vars
    touch inventory/template.ini
    _link ansible.cfg
    echo > .gitignore "/site.yml"
    # ...including roles common to all projects.
    for role in ${COMMON_ROLES[@]} ; do
      lnrole "$role"
      mkdir "inventory/group_vars/$role"
    done
  )
}

# Used to link a given role to the current project
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

