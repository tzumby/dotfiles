# Unbreak broken, non-colored terminal

export PATH="/usr/local/opt/qt/bin:/usr/local/bin:/usr/local/texlive/2019/bin/x86_64-darwin:/usr/local/opt/mysql-client/bin$PATH"

export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
alias date="gdate"
alias psg='ps -ef | grep -i $1'
alias nsg='netstat -natp | grep -i $1'

alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit'

set -o vi

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export GPG_TTY=$(tty)

export JAVA_HOME=$(/usr/libexec/java_home -v 11)

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

export GOPATH=$HOME/code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export PATH=$PATH:/usr/local/opt/
