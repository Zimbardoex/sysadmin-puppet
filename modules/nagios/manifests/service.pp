class nagios::service {
	service{"nagios3":
		require => Class["nagios::config"],
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
	}	
}
