Conrecete TODO's:
- Replace deploy-script with vcsh repos
- Separate mac stuff from linux specific stuff (using vcsh?)
- Incorporate puppet (with homebrew on mac)
- Figure out how to manage keys

Discrepancies on Mac:
- Terminal is different
- Copy/paste works differently (for tmux, vim)
- Super/meta buttons are different (not a problem so far?)
- Remapping caps to ESC is done manually

Problems for automating
- Janus & Prelude are not packaged
- Have to install puppet and git manually for bootstrapping (git is
  probably already in though)


Packages (these are installed by running puppet):
- ruby (1.9.3 or newer because of tmuxinator)
- vcsh
- tmux
- vim
- mr
- node

Gems (these have to be installed manually with gem install):
- tmuxinator

Running puppet
  sudo puppet apply my-machine.pp

vcsh repositories:
- https://github.com/tfnico/config-vim

To be moved into vcsh repos:
- 

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
