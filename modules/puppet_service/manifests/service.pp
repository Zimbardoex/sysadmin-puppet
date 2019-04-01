class puppet_service::service {
	service {"puppet":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Class["puppet_service::config"],
	}
}
