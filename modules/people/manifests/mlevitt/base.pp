class people::mlevitt::base {
  include people::mlevitt::dotfiles
  include people::mlevitt::handbrake
  include people::mlevitt::iterm2
  include java
  include people::mlevitt::osx_defaults
  include quicksilver
  include spectacle

  package { [
    'tmux',
    'tree',
    'watch',
    ]:
    ensure => 'present',
  }
}
