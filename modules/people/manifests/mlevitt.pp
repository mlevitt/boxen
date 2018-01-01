include homebrew

class people::mlevitt {

  include people::mlevitt::base
  include people::mlevitt::development

  # include people::mlevitt::atlassian
  include people::mlevitt::dnscrypt

  include virtualbox
  include zsh
}
