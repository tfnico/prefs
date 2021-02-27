Current bootstrap process
=========================

# Initial steps

* Bring SSH keys and GPG on to the new machine 

# Bootstrap Ubuntu

Install the basic of packages:
```
sudo apt install \
curl \
copyq \
guake \
htop \
keepassxc \
myrepos \
neovim \
ripgrep \
tig \
tmate \
tmux \
tmuxinator \
vcsh \
zsh
```
# Add snaps bin to environment

See [here](https://askubuntu.com/questions/910821/programs-installed-via-snap-not-showing-up-in-launcher).

# Disable workspaces

In keyboard settings, disable all shortcuts for workspaces.

# Configure Guake

Start at login. Start with full screen. Set keyboard shortcut to Ctrl+Esc.

# Remap caps to be escape

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

# Still manual installs

- Google Chrome
- Keybase
- oh-my-zsh

