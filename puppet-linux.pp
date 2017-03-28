include foo

class foo {

  $packages = [
    'ack-grep',     # just so the vim ack plugin will activate
    'audacity',
    'compizconfig-settings-manager', # for tweaking more compiz stuff
    'curl',
    'dconf-cli',
    'fonts-powerline',
    'git',
    'glipper', # paste buffers
    'gparted',
    'gquilt', #mercurial gui
    'gtk-recordmydesktop',
    'guake',
    'htop',
    'keepass2',
    'mercurial',
    'mercurial-git',
    'mumble',
    'myrepos', # for syncing dotfiles
    'network-manager-openvpn',
    'network-manager-openvpn-gnome',
    'nodejs',
    'openvpn',
    'quiterss',
    'rake',    # needed for vim-janus installer
    'ruby-dev', # needed for jekyll at least
    'tig',
    'tmate',
    'tmux',
    'unetbootin',
    'vagrant',
    'vcsh',    # for putting dotfiles in place
    'vim-gnome',
    'vlc',
    'xclip',
  ]

  package { $packages:
    ensure => installed,
  }
}

