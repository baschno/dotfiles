#!/bin/bash

# load fzf key-bindings and completions if installed
if 
    which fzf;
then
    source ~/dotfiles/completion.zsh
    source ~/dotfiles/key-bindings.zsh
fi

# https://stackoverflow.com/questions/53600790/green-background-on-some-directories-oh-my-zsh-zsh
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"