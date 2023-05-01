export LC_all=en_US.UTF-8
export LANG=en_US.UTF-8

# Add to path
# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

autoload -U colors && colors # colors
PS1="%{$fg[red]%}%n%{$fg[green]%}%{$fg[yellow]%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~ %{$reset_color%}$ " # prompt

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/history/zsh_history
HIST_STAMPS="yyyy-mm-dd" # time stamps in history

# Autocopletion
autoload -Uz compinit # enable autocompletion
compinit # enable autocompletion
zstyle ':completion:*' menu select # arrow choice of autocomplete options
_comp_options+=(globdots) # include hidden files

# custom alias
alias view="vim -R"
alias ls="exa"
alias rm="rm -I" # Are you sure?..
