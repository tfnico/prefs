Current bootstrap process
=========================

# Bootstrap, install Puppet, homebrew, vcsh, mr
# On mac:
    - Create /opt/boxen
    - git clone git@github.com:tfnico/my-boxen.git repo
    - cd repo; ./script/boxen
    - sudo mkdir /usr/share/mr;sudo ln -s /opt/boxen/homebrew/Cellar/mr/1.20130826/share/mr/vcsh /usr/share/mr/vcsh
# On ubuntu:
    - sudo puppet apply my-machine.pp
# vcsh clone git@github.com:tfnico/config-mr.git mr
# Run mr up (this should achieve the same as running ./deploy
# set shell to be zsh in Terminal apps
# gem install tmuxinator

Setting up pure (instead of oh-my-zsh)
======================================

Set up:

    cd ~/pure #cloned by myrepos
    sudo ln -s "$PWD/pure.zsh" /usr/share/zsh/site-functions/prompt_pure_setup

Conrecete TODO's
================
# vcsh/mr: Separate mac stuff from linux specific stuff
    - tmux: https://github.com/blast-hardcheese/tmux-MacOSX-pasteboard/commit/b04f38f1eeca0efb61e2954efe83ebdb2109876e
# Afterwards: Manage boxen repo with mr?
# Add oh-my-zsh to mr/vcsh

Future experiments
==================
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
- Janus: curl -Lo- https://bit.ly/janus-bootstrap | bash
- Have to install puppet manually (bootstrap script on linux, boxen on mac)
- vim-plugins (.janus/ as submodules or mr?)
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
- the caps lock remapping (ubuntu only, use boxen on mac)

Credits
=======
Oh-my-zsh:
- https://github.com/robbyrussell/oh-my-zsh

Pure instead of ohmyzsh:
- https://github.com/sindresorhus/pure

Vim-Janus:
- https://github.com/carlhuda/janus/

Clone these into ~/.vim/janus (TODO: do so automatically):
- git://github.com/altercation/vim-colors-solarized.git
- git@github.com:tfnico/vim-gradle.git
- git@github.com:sukima/xmledit.git
- git://github.com/tpope/vim-jdaddy.git


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
