class people::mlevitt::development {

  # include people::mlevitt::python_dev

  # Homebrew packages
  package { [
    'autoconf',
    'automake',
    'boost',
    'cmake',
    'ctags',
    'doxygen',
    'freetype',
    'fswatch',
    'gdbm',
    'graphviz',
    'jpeg',
    'libevent',
    'libpng',
    'libtiff',
    'mercurial',
    'pcre',
    'readline',
    'reattach-to-user-namespace',
    'sqlite',
    'swig',
    'the_silver_searcher',
    'xz',
    ]:
    ensure => 'present',
  }
}
