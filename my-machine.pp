include foo

class foo {
  package {'myrepos':
    ensure => installed,
  }
  package {'nodejs':
    ensure => installed,
  }
  package {'vcsh':
    ensure => installed,
  }
  package {'tmux':
    ensure => installed,
  }
}

