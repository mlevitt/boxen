class people::mlevitt::dotfiles {
  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  repository { $dotfiles:
    source => 'mlevitt/dotfiles',
  }
}
