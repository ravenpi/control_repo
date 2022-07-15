node default {
}
node 'master.puppet.vm' {
  include role::master_server
}

node /^db/ {
  include roles::db_server
}

node /^web/ {
  include roles::app_server
}
