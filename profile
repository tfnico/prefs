function parse_git_branch_and_add_brackets {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\[\1\]/'
}
PS1="[\t] \u\[\e[31;1m\]:\[\e[0m\]\w/\[\033[0;32m\]\$(parse_git_branch_and_add_brackets)\[\033[0m\]>"
ANT_HOME=/Developer/ant/current
MVN_HOME=/Developer/maven/current

APPS=$MVN_HOME/bin:$ANT_HOME/bin

PATH=~/bin:$APPS:$PATH

export EDITOR=vim

export MAVEN_OPTS="-XX:MaxPermSize=256m -Xmx1024m"

# Fix for iterm2's encoding.
export LC_ALL="en_US.UTF-8"

alias pb=pbcopy
