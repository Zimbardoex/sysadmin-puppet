node /group10(:?mgmt|db|backups|app).foo.org.nz/ {
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service
}

node 'group10mgmt.foo.org.nz'{
	include nagios
}

node /group10(:?db|backups|app).foo.org.nz/ {
	include nrpe
}

