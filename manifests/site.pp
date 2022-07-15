node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
  ensure => file,
  content => "Welcome to ${fqdn}",
  }
}

node /^db/ {
  include role::db_server
}

node /^web/ {
  include role::app_server
}

node /^ssh/ {
  include role::ssh_server
}

node /^minecraft/ {
  include role::minecraft_server
}
