class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  host {'web.puppet.wm':
    host => present,
    ip   => '172.18.0.2',
  }
  host {'db.puppet.wm':
    host => presnet,
    ip   => '172.18.0.3',
  }
}
