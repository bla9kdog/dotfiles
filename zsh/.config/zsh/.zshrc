LS_COLORS='di=31:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:'
export LS_COLORS

# Plugins

source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/vi-mode.zsh/vi-mode.zsh

# Aliases

alias v="nvim"
alias vim="nvim"
alias sv="sudo nvim"
alias pacman="sudo pacman"
alias font="cd ~/src/figma-linux-font-helper && npm start"
alias SS="sudo systemctl"
alias dr="~/.local/bin/dragon"
alias ls="ls -alh --color=auto"
alias ..="cd .."
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias grep="grep --color=auto"
alias df="df -h"
alias free="free -m"

# History

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Autocomplete

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Prompt

setopt prompt_subst
setopt promptsubst
setopt promptpercent

autoload colors; colors;

local return_code="%(?..%{$fg[cyan]%}%? ↵%{$reset_color%})"

local user_host='%{$fg[cyan]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg[red]%}%~%{$reset_color%}'

local git_branch='$(git_prompt_info)%{$reset_color%}'

RPROMPT="[%{$fg[cyan]%}%@%{$reset_color%}] ${return_code}%{$reset_color%}"
PROMPT="┌─[${user_host}]—[${current_dir}]${git_branch}
└─%B%b "

ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Git Prompt

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "—[%{$fg[yellow]%}${ref#refs/heads/}%{$reset_color%}]"
}

if [[ `uname` == 'Linux' ]]
then
    local user_host='%{$fg[cyan]%}%n@%m%{$reset_color%}'
    local current_dir='%{$fg[red]%}%~%{$reset_color%}'
    RPROMPT="[%{$fg[red]%}%@%{$reset_color%}] ${return_code}%{$reset_color%}"
    PROMPT="┌─[${user_host}]—[${current_dir}]${git_branch}
└─%B%b "
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
