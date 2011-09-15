# Solarized dircolors:
eval `dircolors /home/tfnico/prefs/dir_colors`
# Git auto completion
source ~/prefs/git-completion.bash
source ~/prefs/env

PS1='[\t] \u\[\e[31;1m\]:\[\e[0m\]\w/\[\033[0;32m\]$(__git_ps1 "[%s]")\[\033[0m\]>'

