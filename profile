# Unbreak broken, non-colored terminal
export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

### git-prompt
__git_ps1() { :;}
PS1='\[\e[34m\]\u\[\e[1;32m\] \[\e[m\]\w\[\e[1;30m\]$(__git_ps1)\[\e[1;31m\]> \[\e[0m\]'

source ~/bin/git-completion.bash

export PATH="$HOME/.cargo/bin:/usr/local/bin:/Users/tzumby/.kiex/bin:$PATH"
source ~/.bash_completion/alacritty
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
