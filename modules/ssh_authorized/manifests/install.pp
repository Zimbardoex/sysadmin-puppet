class ssh_authorized::install{
	package{ "ssh":
		ensure => present,
	}
}
