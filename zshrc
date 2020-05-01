export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "kiurchv/asdf.plugin.zsh", defer:2

plugins+=(asdf)

export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
alias date="gdate"
alias psg='ps -ef | grep -i $1'
alias nsg='netstat -natp | grep -i $1'
alias timestamp='date +%F'

alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit'

set -o vi

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export GPG_TTY=$(tty)
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

export PATH="/usr/local/opt/qt/bin:/usr/local/bin:/usr/local/texlive/2019/bin/x86_64-darwin:/usr/local/opt/mysql-client/bin$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

SILVER=(status:black:white dir:blue:black git:green:black)
export SILVER_ICONS=nerd
export SILVER_SHELL=zsh

eval "$(silver init)"

PROMPT_COMMAND=silver_prompt
silver_prompt() {
	PS1="$(code=$? jobs=$(jobs -p | wc -l) silver print "${SILVER[@]}") "
}

export GOPATH=$HOME/code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
. /usr/local/share/zsh/site-functions/aws_zsh_completer.sh
