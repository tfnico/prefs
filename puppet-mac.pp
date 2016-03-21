include stdlib
include tfnico::packages

class tfnico::packages {

  $packages = [
    'ack',
    'ant',
    'curl',
    'git', # should replace default git
    'gitslave',
    'gpg',
    'grails',
    'htop',
    'jenv',
    'keybase',
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
    'atom',
    'clipmenu',
    'cord',
    'cyberduck',
    'dropbox',
    'easysimbl',
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
    'microsoft-office',
    'pgadmin3',
    'seil',
    'skype',
    'sourcetree',
    'spotify',
    'teamviewer',
    'tunnelblick',
    'vagrant',
    'vmware-fusion',
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

