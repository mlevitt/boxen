include homebrew

class people::mlevitt {

  include people::mlevitt::base
  include people::mlevitt::development

  include people::mlevitt::atlassian
  include people::mlevitt::dnscrypt

  include virtualbox

  # Install nokogiri
  ruby_gem { "nokogiri":
    gem          => 'nokogiri',
    ruby_version => '2.0.0'
  }
  # Install veewee
  ruby_gem { "veewee":
    gem          => 'veewee',
    ruby_version => '2.0.0'
  }
}
