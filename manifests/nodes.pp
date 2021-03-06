node 'group10app.foo.org.nz'{
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service
	include check_resolv
	include bacula-file
	include no_dns_update

	include nrpe
}

node 'group10app2.foo.org.nz'{
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service
	include check_resolv
	include bacula-file
	include no_dns_update
	include owncloud

	include nrpe
}
node 'group10db.foo.org.nz'{
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service
	include check_resolv
	include bacula-file
	include no_dns_update

	include nrpe
	include bacula-mysql-backup
}

node 'group10backups.foo.org.nz'{
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service
	include check_resolv
	include bacula-file
	include no_dns_update

	include nrpe
	include bacula-storage
	include bacula-director
}

node 'group10mgmt.foo.org.nz'{
	package {'vim': ensure => present }
	include sudo
	include ntp_service
	include mariadb
	include tidy_files
	include ssh_authorized
	include puppet_service
	#include check_resolv
	include bacula-file
	include no_dns_update

	include nagios
	include nagios-slack-notifications
}
