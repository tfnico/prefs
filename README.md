Current bootstrap process
=========================

# Bootstrap, install Puppet, homebrew, vcsh, mr
# On mac: 
    - Create /opt/boxen 
    - git clone git@github.com:tfnico/my-boxen.git repo
    - cd repo; boxen
# On ubuntu:
    - sudo puppet apply my-machine.pp
# vcsh clone git@github.com:tfnico/config-mr.git mr
# Run mr up (this should achieve the same as running ./deploy
# gem install tmuxinator
# set shell to be tmux

Sync
====
vcsh status

Conrecete TODO's
================
- Replace deploy-script with vcsh repos (in progress)
- Get the .ssh config into some private repo
- Manage boxen repo with mr
- vcsh/mr: Separate mac stuff from linux specific stuff

Future experiments
==================
- Try out Pure instead of ohmyzsh: https://github.com/sindresorhus/pure
- Try out jump plugin: https://github.com/robbyrussell/oh-my-zsh/pull/2045

Discrepancies on Mac
====================
- Uses boxen to bootstrap puppet and homebrew
- Terminal is different
- Copy/paste works differently (for tmux, vim)
- Super/meta buttons are different (not a problem so far?)
- Remapping caps to ESC is done with PCKeyboardHack (installed with boxen, configured manually)

Still manual installs
=====================
- Janus
- Prelude
- oh-my-zsh
- Have to install puppet manually (bootstrap script on linux, boxen on mac)
- vim-plugins (.janus/* as submodules or mr?)
- Ubuntu currently has ruby 1.9.2, but tmuxinator needs 1.9.3:
  workaround: get some newer 1.9.3 in manually (note that p0 has bugs
  regarding puppet)
  Workaround: http://blog.brightbox.co.uk/posts/next-generation-ruby-packages-for-ubuntu
  Could also use RVM, I suppose.. Nice to just have one Ruby.
- tmuxinator requires tmux >= 1.7, but Ubuntu currently comes with 1.6.
  Manually installed one I found on https://launchpad.net/ubuntu/+source/tmux
- node on ubuntu is really ancient
- probably postgres will be old too (they have their own repo I should
  configure, and it's generally a hassle on mac)
- Java (maybe just stick to doing that manually)


vcsh repositories:
- https://github.com/tfnico/config-vim

To be moved into vcsh repos:
- the caps lock remapping (ubuntu only)
- tmux.conf
- gitconfig (split work from private?)
- zshrc
- ackrc
- tmuxinator
- bin/*

Oh-my-zsh:
- https://github.com/robbyrussell/oh-my-zsh

Vim-Janus:
- curl -Lo- https://bit.ly/janus-bootstrap | bash
- https://github.com/carlhuda/janus/

Get vim bundle and iTerm colors from:
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

Clone these into ~/.vim/janus (TODO: do so automatically):
- git://github.com/altercation/vim-colors-solarized.git
- git@github.com:tfnico/vim-gradle.git
- git@github.com:sukima/xmledit.git
- git://github.com/tpope/vim-jdaddy.git

