class puppet_service::install {
	package{"puppet":
		ensure => present,
	}
}
