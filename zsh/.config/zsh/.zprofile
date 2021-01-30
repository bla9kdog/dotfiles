export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export LS_COLORS

export PATH="$HOME/.local/bin:$PATH"

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export PATH=$XDG_CONFIG_HOME/npm-global/bin:$PATH
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export LESSHISTFILE=-
export GIT=$XDG_CONFIG_HOME/git/config
export SUBVERSION_HOME=$XDG_CONFIG_HOME/subversion
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export VIMINIT='if has("nvim") | so $XDG_CONFIG_HOME/nvim/init.vim | else | set nocp | so $XDG_CONFIG_HOME/.config/vim/vimrc | endif'

