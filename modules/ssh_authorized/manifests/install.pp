class ssh_authorised::install{
	package{ "ssh":
		ensure => present,
	}
}
