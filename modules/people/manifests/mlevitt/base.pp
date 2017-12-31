class people::mlevitt::base {
  include dropbox
  include people::mlevitt::dotfiles
  include flux
  include googleearth
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
  include utorrent
  include vlc
  include wireshark

  package { [
    'boot2docker',
    'tmux',
    'tree',
    'watch',
    ]:
    ensure => 'present',
  }
}
