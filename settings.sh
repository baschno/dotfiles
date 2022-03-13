#!/usr/bin/env bash

# load fzf key-bindings and completions if installed
if 
    which fzf > /dev/null;
then
    source ~/dotfiles/completion.zsh
    source ~/dotfiles/key-bindings.zsh
fi

# https://stackoverflow.com/questions/53600790/green-background-on-some-directories-oh-my-zsh-zsh
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"


# automatically start virtualenv if available in folder
function cd() {
  builtin cd "$@"

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    ## If env folder is found then activate the vitualenv
      if [[ -d ./.venv ]] ; then
        source ./.venv/bin/activate
      fi
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate
      parentdir="$(dirname "$VIRTUAL_ENV")"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        deactivate
      fi
  fi
}