#!bin/bash

alias gs='git status'
alias dotfiles="git --git-dir $HOME/.dotfiles/ --work-tree $HOME"

#git commit function
function gc {
  git add -A

  if [ -z "$1" ]; then
    git commit -S
  else
    git commit -m "$1"
  fi
}

