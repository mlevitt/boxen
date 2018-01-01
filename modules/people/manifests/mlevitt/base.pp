class people::mlevitt::base {
  include people::mlevitt::dotfiles
  include people::mlevitt::iterm2
  include people::mlevitt::osx_defaults
  # include java
  # include googleearth
  # include imagemagick

  package { [
    'boot2docker',
    'imagemagick',
    'tmux',
    'tree',
    'vagrant',
    'watch',
    'wireshark'
    ]:
    ensure => 'present',
  }
  $caskAble = [ 
    'docker', 
    'firefox', 
    'flux',
    'google-chrome', 
    'quicksilver',
    'spectacle',
    'spotify',
    'steam',
    'vlc',
  ]

  ensure_resource('package', $caskAble, {
    'provider' => 'brewcask',
  })

  # Application in a .zip
  package { 'GitHub Desktop':
    ensure   => installed,
    source   => 'https://desktop.githubusercontent.com/releases/1.0.11-adca8f03/GitHubDesktop.zip',
    provider => compressed_app
  }
  # Application in a .zip
  package { 'GeekTool':
    ensure   => installed,
    source   => 'https://dl.devmate.com/org.tynsoe.GeekTool/331.014/1470733752/GeekTool-331.014.zip',
    provider => compressed_app
  }
}
