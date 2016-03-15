include stdlib
include tfnico::packages


class tfnico::packages {

  $packages = [
    'curl',
    'git', # should replace default git
    'gitslave',
    'htop',
    'jenv',
    'myrepos', # for syncing dotfiles
    'node',
    'openvpn',
    'postgresql',
    'tig',
    'tmux',
    'vcsh',    # for putting dotfiles in place
    'vim',
  ]

  package { $packages:
    provider => 'brew',
    ensure   => installed,
  }

  $casks = [
    'cyberduck',
    'dropbox',
    'firefox',
    'google-chrome',
    'google-drive',
    'hipchat',
    'jumpcut',
    'keepassx',
    'keycastr',
    'libreoffice',
    'iterm2',
    'intellij-idea',
    'pgadmin3',
    'seil',
    'skype',
    'sourcetree',
    'spotify',
    'teamviewer',
    'tunnelblick',
    'vagrant',
    'virtualbox',
    'vlc',
    'wireshark',
  ]

  package { $casks:
    ensure   => installed,
    provider => 'brewcask',
  }

  $gems = [
    'hiera', # needed for puppet/brewcask
    'rake', # needed for vim-janus installer
    'tmuxinator',
  ]

  package { $gems:
    ensure   => installed,
    provider => 'gem'
  }
}

