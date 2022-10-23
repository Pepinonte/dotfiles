#!bin/bash

alias gs='git status'

#git commit function
function gc {
  git add -A

  if [ -z "$1" ]; then
    git commit -S
  else
    git commit -m "$1"
  fi
}

