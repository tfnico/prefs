# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tfnico"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(history-substring-search)

source $ZSH/oh-my-zsh.sh
source ~/prefs/git-completion.bash

# Customize to your needs...
unsetopt correct_all
if [ -f "$HOME/prefs/env" ]; then
  source $HOME/prefs/env
fi

# Add RVM stuff (ruby environment manager)
[[ -s "/Users/tfnico/.rvm/scripts/rvm" ]] && source "/Users/tfnico/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
