# OSX defaults module
class people::mlevitt::osx_defaults {
  include osx::finder::show_all_on_desktop
  include osx::no_network_dsstores
  include osx::global::enable_dark_mode
  include osx::global::enable_dark_mode_shortcut
  include osx::global::tap_to_click
  include osx::dock::autohide
  include osx::dock::position
  include osx::finder::show_hidden_files
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_save_dialog

  class { 'osx::global::key_repeat_delay':
    delay => 15
  }

  class { 'osx::global::key_repeat_rate':
    rate => 2
  }

  class { 'osx::global::natural_mouse_scrolling':
    enabled => true
  }

  class { 'osx::dock::icon_size':
    size => 40
  }

  case $::hostname {
    'MarksMBP': {
      $recovery_message = "If this Mac is found, please call 801-792-2695"
    }

    default: {
      $recovery_message = "If this Mac is found, please call 801-792-2695"
    }
  }
  osx::recovery_message { $recovery_message: }

  class { 'osx::dock::magnification':
    magnification => false,
  }

  class { 'osx::dock::hot_corners':
    top_left => "Disable Screen Saver",
    bottom_left => "Start Screen Saver"
  }
}
