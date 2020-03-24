class ff_base::buildbot {
  # create user
  user {
    'buildbot':
      ensure => present,
  }

  # add cron file that removes old buildbot firmware builds
  file { '/etc/cron.hourly/buildbot-remove-old-builds':
    ensure => present,
    content => template('ff_base/buildbot-remove-old-builds.erb'),
    owner   => 'root',
    group  => 'root',
    mode   => '0755'
  }



}