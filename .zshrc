# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH:/usr/local/go/bin:$HOME/go/bin
export PATH=$PATH:/home/basti/.local/bin

plugins=(git fzf-zsh-plugin zsh-autosuggestions battery)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

export KUBECONFIG=~/.kube/config
eval "$(~/.local/bin/mise activate zsh)"

source ~/.functions.sh
source ~/.aliases
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit
compinit
export KUBECONFIG=~/.kube/config

. <(kubectl completion zsh)
#. <(kubebuilder completion zsh)
#. <(operator-sdk completion zsh)
#. <(flux completion zsh)
eval "$(starship init zsh)"

eval "$(zoxide init --cmd cd zsh)"

# add Pulumi to the PATH
export PATH=$PATH:/home/basti/.pulumi/bin
