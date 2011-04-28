# Git auto completion
source ~/prefs/git-completion.bash

PS1='[\t] \u\[\e[31;1m\]:\[\e[0m\]\w/\[\033[0;32m\]$(__git_ps1 "[%s]")\[\033[0m\]>'

ANT_HOME=/Developer/ant/current
MVN_HOME=/Developer/maven/current

APPS=$MVN_HOME/bin:$ANT_HOME/bin

PATH=~/bin:$APPS:$PATH

export EDITOR=vim

export MAVEN_OPTS="-XX:MaxPermSize=256m -Xmx1024m"

# Fix for iterm2's encoding.
export LC_ALL="en_US.UTF-8"

alias pb=pbcopy
