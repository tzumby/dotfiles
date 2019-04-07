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

export AWS_PROFILE=agilealpha
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.3.2/libexec
export NEO4J_HOME=/Users/tzumby/opt/neo4j-community
export PATH="/Users/tzumby/miniconda2/bin:$PATH"
export PATH=$HOME/bin:/Users/tzumby/.asdf/installs/elixir/1.8.0-otp-21/.mix/escripts:$PATH

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
export PATH="/usr/local/opt/qt/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"
