class people::mlevitt::base {
  include dropbox
  include people::mlevitt::dotfiles
  include flux
  include people::mlevitt::handbrake
  include people::mlevitt::iterm2
  include java
  include imagemagick
  include people::mlevitt::osx_defaults
  include quicksilver
  include skype
  include spotify
  include steam
  include spectacle
  include vlc

  package { [
    'tmux',
    'tree',
    'watch',
    ]:
    ensure => 'present',
  }
}
