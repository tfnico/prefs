include foo

class foo {

  $packages = [
    'ack',     # just so the vim ack plugin will activate
    'vcsh',    # for putting dotfiles in place
    'myrepos', # for syncing dotfiles
    'dconf-cli',
    'git',
    'tig',
    'curl',
    'vim',
    'tmux',
    'htop',
    'nodejs',
    'glipper', # paste buffers
    'rake',    # needed for vim-janus installer
    'ruby-dev', # needed for jekyll at least
    'openvpn',
    'xclip',
  ]

  package { $packages:
    ensure => installed,
  }
}

