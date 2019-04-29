node 'group10db.foo.org.nz', 'group10backups.foo.org.nz', 'group10app.foo.org.nz'{
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service

	include nrpe
}

node 'group10mgmt.foo.org.nz'{
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service

	include nagios
	include nagios-slack-notifications
}
