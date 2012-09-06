# Prompt set up:
autoload -U colors && colors
setopt prompt_subst
local return_status="%(?,%{$fg[green]%}:%{$reset_color%},%{$fg[red]%}:%{$reset_color%})"
PROMPT='$fg[blue][%{$reset_color%}%n@lewie2$return_status%~$fg[blue]]$%{$reset_color%}: '

# Completion
autoload compinit && compinit
zstyle ':completion:*' menu select=10
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}

# History:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Edit style
bindkey -v
