export PATH=$HOME/.cargo/bin:$PATH

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

SILVER=(status:black:white   dir:blue:black git:green:black)
export SILVER_ICONS=nerd
export SILVER_SHELL=zsh

eval "$(silver init)"

PROMPT_COMMAND=silver_prompt
silver_prompt() {
	PS1="$(code=$? jobs=$(jobs -p | wc -l) silver print "${SILVER[@]}") "
}

. $(brew --prefix asdf)/asdf.sh
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/razvan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
