# OSX defaults module
class people::mlevitt::osx_defaults {
  include osx::finder::show_all_on_desktop
  include osx::no_network_dsstores

  class { 'osx::global::key_repeat_delay':
    delay => 30
  }

  case $::hostname {
    'fiji': {
      $recovery_message = "If this Mac is found, please call 801-792-2695"
    }

    default: {
      $recovery_message = "If this Mac is found, please call 801-792-2695"
    }
  }
  osx::recovery_message { $recovery_message: }
}
