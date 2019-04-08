class npre::service{
	service{"nagios-npre-server":
		ensure => running,
			hasstatus => true,
			hasrestart => true,
			enable => true,
			require => Class["npre::config"],

	}
}
