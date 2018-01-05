class people::mlevitt::development {

#  # include people::mlevitt::python_dev
#  include eclipse::java
#  class { 'eclipse::java':
#    release => 'luna',
#    version => 'R'
#   }
  # Homebrew packages
  package { [
    'ctags',
    'fswatch',
    'gdbm',
    'gnupg',
    'graphviz',
    'jpeg',
    'libevent',
    'libpng',
    'libtiff',
    'pcre',
    'readline',
    'reattach-to-user-namespace',
    'sqlite',
    'the_silver_searcher',
    'xz',
    ]:
    ensure => 'present',
  }

  $caskAble = [
    'meld',
  ]

  ensure_resource('package', $caskAble, {
    'provider' => 'brewcask',
  })


}
