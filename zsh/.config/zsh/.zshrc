LS_COLORS='di=36:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:'
export LS_COLORS
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude .vim'

# Plugins

source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-vim-mode/zsh-vim-mode.plugin.zsh

# Aliases

alias v="nvim"
alias vim="nvim"
alias sv="sudoedit"
alias pacman="sudo pacman"
alias SS="sudo systemctl"
alias dr="dragon"
alias ls="ls -alh --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias grep="grep --color=auto"
alias df="df -h"
alias free="free -h"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias add="git add"
alias addup="git add -u"
alias addall="git add ."
alias commit="git commit -m"
alias checkout="git checkout"
alias fetch="git fetch"
alias pull="git pull origin"
alias push="git push origin"
alias status="git status"

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

# Autosuggestions

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0"
bindkey '^ ' autosuggest-accept

# Vim Mode

MODE_CURSOR_VIINS="blinking bar"

# Prompt

setopt prompt_subst
setopt promptsubst
setopt promptpercent

autoload colors; colors;

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local git_branch='$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Git Prompt

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "—[%{$fg[red]%}${ref#refs/heads/}%{$reset_color%}]"
}

local user_host='%{$fg[white]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg[cyan]%}%~%{$reset_color%}'
RPROMPT="${return_code}%{$reset_color%}"
PROMPT="┌─[${user_host}][${current_dir}]${git_branch}
└─%B%b "

# Title

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (alacritty*|gnome*|konsole*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
