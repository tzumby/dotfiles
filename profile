# Unbreak broken, non-colored terminal
export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
alias date="gdate"

set -o vi

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export GPG_TTY=$(tty)

export PATH="/usr/local/bin:$PATH"

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
. $HOME/bin/git-completion.bash

SILVER=(dir:blue:black git:green:black cmdtime:magenta:black)
export SILVER_ICONS=nerd
export SILVER_SHELL=bash
export SILVER_DIR_LENGTH=1

PROMPT_COMMAND=silver_prompt
silver_prompt() {
	PS1="$(code=$? jobs=$(jobs -p | wc -l) silver print "${SILVER[@]}") "
}

export PATH="$HOME/.cargo/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
