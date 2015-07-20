Current bootstrap process
=========================

# Bootstrap Ubuntu:
    - wget https://raw.githubusercontent.com/tfnico/prefs/master/my-machine.pp
    - sudo apt-get install puppet
    - sudo puppet apply my-machine.pp
    - git clone https://github.com/tfnico/prefs.git
    - Disable workspace shortcuts (Lubuntu: use https://code.google.com/p/obkey/ )
# Bootstrap Mac:
    - Create /opt/boxen
    - git clone git@github.com:tfnico/my-boxen.git repo
    - cd repo; ./script/boxen
    - sudo mkdir /usr/share/mr;sudo ln -s /opt/boxen/homebrew/Cellar/mr/1.20130826/share/mr/vcsh /usr/share/mr/vcsh
    - Set up iterm profile manually with solarized theme. In keys, send
      Left Option key as +Esc.
    - Install nodenv: https://github.com/ekalinin/nodeenv
      Set node version with `nodeenv versions` and then 
                            `nodenv local [version]`
    - Set shell to be zsh in iTerm app
# Bring private keys on to machine (for accessing private repositories)
# Set up dotfiles:
    - vcsh clone git@github.com:tfnico/config-mr.git mr
    - mr up
# Install tmuxinator:
    - gem install tmuxinator
# Link in pure zsh:
    - sudo ln -s ~/pure/pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup

Still manual installs
=====================
- Janus: curl -Lo- https://bit.ly/janus-bootstrap | bash
- vim-plugins - clone these into ~/.vim/janus:
    - git@github.com:tfnico/vim-gradle.git
    - git@github.com:sukima/xmledit.git
    - git@github.com:tpope/vim-jdaddy.git
- probably postgres will be old too (they have their own repo I should
  configure, and it's generally a hassle on mac)
- Java (maybe just stick to doing that manually)
- the caps lock remapping
    - ubuntu: xmodmap -e "keycode 66 = Escape" # add to login applications
    - use boxen on mac

Conrecete TODO's
================
# Avoid forking boxen!
# Plugins in .vim/janus/* as submodules or mr?
# vcsh/mr: Separate mac stuff from linux specific stuff
    - tmux: https://github.com/blast-hardcheese/tmux-MacOSX-pasteboard/commit/b04f38f1eeca0efb61e2954efe83ebdb2109876e
# Add oh-my-zsh to mr/vcsh

Future experiments
==================
- Try out oh-my-zsh jump plugin: https://github.com/robbyrussell/oh-my-zsh/pull/2045

Copy/paste
==========
Mixing together terminals, tmux, Vim, desktop and clipboard-managers is
a real hoot. Here are some notes:

Ubuntu: Use Glipper. Set it up to manage middle-mouse/marking so it will
take care of xclip. C-y will move tmux buffer into xclip/Glipper, but
you have to use middle-mouse button to paste it, or select the entry in
Glipper to paste it with Ctrl-V. C-p will take from Glipper nicely.

Yanking in Vim will add to xclip/Glipper. Pasting into Vim can be done via
tmux or with the Terminal paste after activating the buffer in Glipper.
In GVim you can reach Vim and xclip/Glipper buffers in the '*'
buffer.

Discrepancies on Mac
====================
- Uses boxen to bootstrap puppet and homebrew
- Terminal is different
- Copy/paste works differently (for tmux, vim)
- Super/meta buttons are different (not a problem so far?)
- Remapping caps to ESC is done with PCKeyboardHack (installed with boxen, configured manually)


Credits/notes
=============
Oh-my-zsh:
- https://github.com/robbyrussell/oh-my-zsh

Pure instead of ohmyzsh:
- https://github.com/sindresorhus/pure

Vim-Janus:
- https://github.com/carlhuda/janus/


Get missing solarized colors from:
- http://ethanschoonover.com/solarized

Set up Gnome terminal with the dircolors from:
- https://github.com/seebi/dircolors-solarized

Gnome terminal colors fixing is from:
-https://github.com/sigurdga/gnome-terminal-colors-solarized

Git completion is from
- http://www.codethatmatters.com/2010/01/git-autocomplete-in-mac-os-x/

Emacs setup is from
- http://batsov.com/articles/2011/10/09/getting-started-with-emacs-24/
- git clone git://github.com/bbatsov/emacs-prelude.git
- ln -s projects/emacs-prelude ~/.emacs.d

Install RVM like this:
- bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
 
