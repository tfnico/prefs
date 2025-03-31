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
fd-find \
flameshot \
gnome-tweaks \
guake \
htop \
keepassxc \
myrepos \
neovim \
ripgrep \
solaar \
tig \
tmate \
tmux \
tmuxinator \
vcsh \
virtualbox \
zsh
```

# Snaps

- Bruno
- Keybase
- LibreOffice
- Postman
- Slack
- VS Code
- snap install google-cloud-cli --classic

# Still manual installs

- Google Chrome
- oh-my-zsh
- gcloud
- hurl
- go
- fd
- GoLand
- VirtualBox

# Get copyq working

https://copyq.readthedocs.io/en/latest/known-issues.html#on-linux-global-shortcuts-pasting-or-clipboard-monitoring-does-not-work

Global shortcut: https://askubuntu.com/questions/1344833/copyq-global-shortcut-not-working-on-ubuntu-21-04

Startup application:

```
env QT_QPA_PLATFORM=xcb copyq
```


# Disable workspaces

In keyboard settings, disable all shortcuts for workspaces.

# Configure Guake

Start at login. Start with full screen. Set keyboard shortcut to Ctrl+Esc.

# Remap caps to be escape

There's now an option for this in `gnome-tweaks`.

Old way:

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

