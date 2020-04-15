class ff_base::config {
  # nipap config file
  file { '/etc/default/nipap':
    ensure => present,
    content => template('ff_base/etc_default_niapp.erb'),
    owner   => 'root',
    group  => 'root',
    mode   => '0644'
  }
}