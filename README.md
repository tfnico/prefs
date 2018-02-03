Current bootstrap process
=========================

# Initial steps

* Bring SSH keys and GPG on to the new machine 
* Clone prefs:
    - git clone https://github.com/tfnico/prefs.git

# Bootstrap Ubuntu:

* Install and run Puppet:
```
sudo apt-get install puppet
sudo puppet apply puppet-linux.pp
```

* Disable workspace shortcuts (Lubuntu: use https://code.google.com/p/obkey/ )

Some unity/compiz fixes:

* Disable Ctrl+Alt+up for maximizing (Ctrl+Super+up is enough) in
  Compiz/Grid configuration
* Disable all the spaces shortcuts under Keyboard
* Remap caps to be escape:
```
dconf write "/org/gnome/desktop/input-sources/xkb-options" "['caps:escape']"

# Alternatively, edit the empty value in /etc/default/keyboard
XKBOPTIONS="caps:escape"
```

# Set up dotfiles:
```
vcsh clone git@github.com:tfnico/config-mr.git mr
mr up
```

It's still a bit fiddly to get all the repos auth'ed. Do the problematic ones with vcsh pull <repo name>.

Still manual installs
=====================

- Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- Install oh-my-zsh theme [powerlevel9k](https://github.com/bhilburn/powerlevel9k)
- Vim-janus: `curl -Lo- https://bit.ly/janus-bootstrap | bash`
- [ripgrep](https://github.com/BurntSushi/ripgrep) - still not in all repos.
- vim-plugins - clone these into ~/.vim/janus:
    - git@github.com:tfnico/vim-gradle.git
    - git@github.com:sukima/xmledit.git
    - git@github.com:tpope/vim-jdaddy.git
- Java (maybe just stick to doing that manually)
- nvm: git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm


Conrecete TODO's
================

* Move prefs into mr and do the initial puppet-apply using downloaded file instead
* Find a better way to auth all the mr repos (initial ssh alias config problem..)
* Plugins in .vim/janus/ as submodules or mr?
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

Yanking in Vim will add to xclip/Glipper if you use the '+' buffer.

Pasting into Vim can be done via tmux or with the Terminal paste
after activating the buffer in Glipper.

In GVim you can reach Vim and xclip/Glipper buffers in the '\*'
buffer.

For more discussions/ideas on copy/paste:

* https://wiki.archlinux.org/index.php/tmux
* https://github.com/tmux-plugins/tmux-yank looks really interesting
* https://github.com/ThomasAdam/tmux/blob/master/FAQ


Other notes
===========

Get missing solarized colors from:
- http://ethanschoonover.com/solarized

Set up Gnome terminal with the dircolors from:
- https://github.com/seebi/dircolors-solarized

Gnome terminal colors fixing is from:
-https://github.com/sigurdga/gnome-terminal-colors-solarized

Emacs setup is from
- http://batsov.com/articles/2011/10/09/getting-started-with-emacs-24/
- git clone git://github.com/bbatsov/emacs-prelude.git
- ln -s projects/emacs-prelude ~/.emacs.d

Install RVM like this:
- bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

