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
# Example format: plugins=(rails git textmate ruby lighthouse) vi-mode emacs-mode 
plugins=(history-substring-search)

source $ZSH/oh-my-zsh.sh
source ~/prefs/git-completion.bash

# Customize to your needs...
unsetopt correct_all
if [ -f "$HOME/prefs/env" ]; then
  source $HOME/prefs/env
fi

# Add RVM stuff (ruby environment manager)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Zsh tab completion for cd ..
zstyle ':completion:*' special-dirs true

# Source the shell switcher at work
if [ -f "$HOME/.shell.sh" ]; then
  source ~/.shell.sh
fi

# OS specific stuff

platform='unknown'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
fi

if [[ $platform == 'linux' ]]; then
    #on osx we have open
    alias open=gnome-open
    #Can't remember what the following fix was for. tmux problems
    #on ubuntu I think.
    alias tig="TERM=screen /usr/local/bin/tig"
    alias open="gnome-open"
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

