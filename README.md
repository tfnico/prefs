Current bootstrap process
=========================

# Initial steps

* Bring SSH keys and GPG on to the new machine 
* Install oh-my-zsh according to https://github.com/robbyrussell/oh-my-zsh
* Clone prefs:
    - git clone https://github.com/tfnico/prefs.git

# Bootstrap Ubuntu:

* Install and run Puppet:
```
sudo apt-get install puppet
sudo puppet apply puppet-linux.pp
```

* Disable workspace shortcuts (Lubuntu: use https://code.google.com/p/obkey/ )
* Remap caps key: xmodmap -e "keycode 66 = Escape" # add to login applications

# Bootstrap Mac:

* Install xcode command line tools:

```
xcode-select --install
```

* install Homebrew according to http://brew.sh/ (maybe Puppet can do this?)
* install Puppet according to http://docs.puppetlabs.com/puppet/latest/reference/install_osx.html
* Install casks using Puppet:
```
export PATH=$PATH:/opt/puppetlabs/bin
sudo puppet module install thekevjames-homebrew
sudo puppet module install puppetlabs-stdlib
sudo puppet apply puppet-mac.pp
```
* Set up iterm profile manually with solarized theme. In keys, send Left Option key as +Esc.
* OS X Keyboard preferences 
  * Modifier keys, set Caps Lock to No Action
  * Use F keys as standard function keys
  * Shortcuts -> Tab All Controls
* Setup up tmux mouse scrolling: http://stackoverflow.com/questions/30185210/ubuntu-change-tmux-1-8-to-tmux-next-1-9
* Install the [Hack font](https://github.com/chrissimpkins/Hack#desktop-installation):

    brew cask install caskroom/fonts/font-hack

# Set up dotfiles:
```
vcsh clone git@github.com:tfnico/config-mr.git mr
mr up
```

It's still a bit fiddly to get all the repos auth'ed. Do the problematic ones with vcsh pull <repo name>.

Still manual installs
=====================
- Janus: `curl -Lo- https://bit.ly/janus-bootstrap | bash`
- vim-plugins - clone these into ~/.vim/janus:
    - git@github.com:tfnico/vim-gradle.git
    - git@github.com:sukima/xmledit.git
    - git@github.com:tpope/vim-jdaddy.git
- Java (maybe just stick to doing that manually)

Conrecete TODO's
================

* Find a better way to auth all the mr repos
* Plugins in .vim/janus/ as submodules or mr?
* vcsh/mr: Separate mac stuff from linux specific stuff?
* Add oh-my-zsh to mr/vcsh

Future experiments
==================
- Try out oh-my-zsh jump plugin: https://github.com/robbyrussell/oh-my-zsh/pull/2045

Copy/paste
==========
Mixing together terminals, tmux, Vim, desktop and clipboard-managers is
a real hoot. Here are some notes:

Ubuntu: Use Glipper. Set it up to manage middle-mouse/marking so it will
take care of xclip. y will move tmux buffer into xclip/Glipper. C-p will take
from Glipper nicely.

Yanking in Vim will add to xclip/Glipper. Pasting into Vim can be done via
tmux or with the Terminal paste after activating the buffer in Glipper.
In GVim you can reach Vim and xclip/Glipper buffers in the '\*'
buffer.

For more discussions/ideas on copy/paste:

* https://wiki.archlinux.org/index.php/tmux
* https://github.com/tmux-plugins/tmux-yank looks really interesting
* https://github.com/ThomasAdam/tmux/blob/master/FAQ

Discrepancies on Mac
====================

* Uses homebrew/cask with puppet
* Copy/paste works differently (for tmux, vim)
* Super/meta buttons are different (not a problem so far?)

Other notes
===========

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
 
