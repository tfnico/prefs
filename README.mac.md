Below is the old readme pieces for OSX/mac. Not updated anymore.
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

Discrepancies on Mac
====================

* Uses homebrew/cask with puppet
* Copy/paste works differently (for tmux, vim)
* Super/meta buttons are different (not a problem so far?)
