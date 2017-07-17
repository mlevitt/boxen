class people::mlevitt {
  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  repository { "${dotfiles}":
    source  => 'mlevitt/dotfiles'
  }

  include chrome
  include dropbox
  include handbrake

  include iterm2::stable
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark

  include java
  include kubectl
  include ohmyzsh
  include xquartz

  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::tap_to_click
  include osx::finder::show_all_on_desktop
  include osx::finder::no_file_extension_warnings
  include osx::no_network_dsstores
  class { 'osx::global::key_repeat_delay':
    delay => 25
  }
  class { 'osx::global::key_repeat_rate':
    rate => 2
  }
  osx::recovery_message {
    'If this Mac is found, please call 801-792-2695':
  }

  include spectacle
  include tmux
  include vagrant
  include virtualbox
  include zsh

  # Various homebrew packages
  package { [
    'dos2unix',
    'eigen',
    'gpg',
    'jq',
    'maven',
    'pstree',
    'pv',
    'tree',
    'watch',
    ]:
    ensure => 'present'
  }

  # Caskroom packages
  package { [
      'docker-edge',
      'geektool',
      'quicksilver',
    ]:
    ensure => present,
    provider => 'brewcask',
  }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }
}
