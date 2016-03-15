include stdlib
include tfnico::packages

class tfnico::packages {

  $packages = [
    'ack',
    'ant',
    'curl',
    'git', # should replace default git
    'gitslave',
    'grails',
    'htop',
    'jenv',
    'maven',
    'myrepos', # for syncing dotfiles
    'netcat',
    'node',
    'openvpn',
    'p7zip',
    'postgresql',
    'rpl',
    'ssh-copy-id',
    'tig',
    'tmux',
    'vcsh',    # for putting dotfiles in place
    'vim',
    'wget',
  ]

  package { $packages:
    ensure   => installed,
    provider => 'brew',
  }

  $casks = [
    'clipmenu',
    'cyberduck',
    'dropbox',
    'firefox',
    'google-chrome',
    'google-drive',
    'hipchat',
    'keepassx',
    'keycastr',
    'libreoffice',
    'iterm2',
    'intellij-idea',
    'macvim',
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

