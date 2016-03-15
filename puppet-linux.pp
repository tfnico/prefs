include foo

class foo {

  $packages = [
    'vcsh',    # for putting dotfiles in place
    'myrepos', # for syncing dotfiles
    'git',
    'tig',
    'curl',
    'vim',
    'tmux',
    'htop',
    'nodejs',
    'glipper', # paste buffers
    'rake',    # needed for vim-janus installer
    'openvpn',
  ]

  package { $packages:
    ensure => installed,
  }
}

