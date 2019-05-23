class owncloud::config{
	file{"/etc/apache2/sites-available/owncloud.conf":
		source => "puppet:///modules/owncloud/owncloud.conf",
		mode => 766,
		ensure => "present",
	}

	file { '/etc/apache2/sites-enabled/owncloud.conf':
		ensure => 'link',
		mode => 766,
		target => '/etc/apache2/sites-available/owncloud.conf',
		notify => Class["owncloud::service"],
		require => Class["owncloud::install"],
	}
}
