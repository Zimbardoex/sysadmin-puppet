class nagios-slack-notifications::install {
	package{ "libwww-perl" :
		ensure => present,
	}

	package { "libcrypt-ssleay-perl" :
		ensure => present,
	}
}
