class check_resolv::service{
	service{"cron":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Class["check_resolv::config"],
	}
}
