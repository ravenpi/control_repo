node default {
  file {'/root/biscotti.txt':
    ensure => file,
    source => 'http://recipes.jots.org/biscotti.html',
  }
}
