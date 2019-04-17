class nagios::config{
	file{ '/etc/nagios3/nagios.cfg':
		ensure => present,
		source => "puppet:///modules/nagios/nagios.cfg",
		mode => 0444,
		owner => "root",
		group => "root",
		require => Class["nagios::install"],
		notify => Class["nagios::service"],
	}

	file{ '/etc/nagios3/htpasswd.users':
		ensure => present,	
		source => "puppet:///modules/nagios/htpasswd.users",
		mode => 0444,
		owner => "root",
		group => "root",
		require => Class["nagios::install"],
		notify  => Class["nagios::service"],
	}

	file{ '/etc/nagios3/conf.d':
		ensure  => directory,
		owner 	=> "root",
		group 	=> "puppet",
		mode 	=> 0775,
		require => Class["nagios::install"],
		notify  => Class["nagios::service"],
	}

	nagios_hostgroup {'ssh-servers':
		target => '/etc/nagios3/conf.d/ppt_hostgroups.cfg',
		alias => 'SSH Servers',
		members => 'group10db.foo.org.nz, group10app.foo.org.nz, group10backups.foo.org.nz, group10mgmt.foo.org.nz',
		notify  => Class["nagios::service"],
	}

	nagios_service {'ssh':
		service_description => 'ssh servers',
		hostgroup_name => 'ssh-servers',
		target => '/etc/nagios3/conf.d/ppt_services.cfg',
		check_command => 'check_ssh',
		max_check_attempts => 3,
		retry_check_interval => 1,
		normal_check_interval => 5,
		check_period => '24x7',
		notification_interval => 30,
		notification_period => '24x7',
		notification_options => 'w,u,c',
		contact_groups => 'admins',
		notify  => Class["nagios::service"],
	}

	nagios_hostgroup {'remote-disks':	
		target => '/etc/nagios3/conf.d/ppt_hostgroups.cfg',
		alias => 'Remote Disks',
		members => 'group10db.foo.org.nz, group10app.foo.org.nz,group10backups.foo.org.nz',
		notify => Class["nagios::service"],
	}

	nagios_service {'remote-disk-service':
		service_description => 'Servers where the remote disks are monitored.',
		hostgroup_name => 'remote-disks',
		target => '/etc/nagios3/conf.d/ppt_services.cfg',
		check_command => 'check_nrpe_1arg!check_sda1',
		max_check_attempts => 3,
		retry_check_interval => 1,
		normal_check_interval => 5,
		check_period => '24x7',
		notification_interval => 30,
		notification_period => '24x7',
		notification_options => 'w,u,c',
		contact_groups => 'admins',
		notify  => Class["nagios::service"],
	}

	nagios_hostgroup {'remote-processors':	
		target => '/etc/nagios3/conf.d/ppt_hostgroups.cfg',
		alias => 'Remote Processors',
		members => 'group10db.foo.org.nz, group10app.foo.org.nz,group10backups.foo.org.nz',
		notify => Class["nagios::service"],
	}

	nagios_service {'remote-processor-service':
		service_description => 'Servers where the processors are monitored.',
		hostgroup_name => 'remote-processors',
		target => '/etc/nagios3/conf.d/ppt_services.cfg',
		check_command => 'check_nrpe_1arg!check_load',
		max_check_attempts => 3,
		retry_check_interval => 1,
		normal_check_interval => 5,
		check_period => '24x7',
		notification_interval => 30,
		notification_period => '24x7',
		notification_options => 'w,u,c',
		contact_groups => 'admins',
		notify  => Class["nagios::service"],
	}


	nagios_hostgroup {'mariadb-servers':
		target => '/etc/nagios3/conf.d/ppt_hostgroups.cfg',
		alias => 'MariaDB Servers',
		members => 'group10db.foo.org.nz',
		notify  => Class["nagios::service"],
	}

	nagios_service {'mariadb':
		service_description => 'mariadb servers',
		hostgroup_name => 'mariadb-servers',
		target => '/etc/nagios3/conf.d/ppt_services.cfg',
		check_command => 'check_mysql_cmdlinecred!nagios!mypasswd',
		max_check_attempts => 3,
		retry_check_interval => 1,
		normal_check_interval => 5,
		check_period => '24x7',
		notification_interval => 30,
		notification_period => '24x7',
		notification_options => 'w,u,c',
		contact_groups => 'admins',
		notify  => Class["nagios::service"],
	}

	nagios_host{ "group10db.foo.org.nz":
		target => "/etc/nagios3/conf.d/ppt_hosts.cfg",
		alias => "db",
		check_period => "24x7",
		max_check_attempts => 3,
		check_command => "check-host-alive",
		notification_interval => 30,
		notification_period => "24x7",
		notification_options => "d,u,r",
		mode => 0444,
	}

	nagios_host{ "group10app.foo.org.nz":
		target => "/etc/nagios3/conf.d/ppt_hosts.cfg",
		alias => "app",
		check_period => "24x7",
		max_check_attempts => 3,
		check_command => "check-host-alive",
		notification_interval => 30,
		notification_period => "24x7",
		notification_options => "d,u,r",
		mode => 0444,
	}

	nagios_host{ "group10backups.foo.org.nz":
		target => "/etc/nagios3/conf.d/ppt_hosts.cfg",
		alias => "backups",
		check_period => "24x7",
		max_check_attempts => 3,
		check_command => "check-host-alive",
		notification_interval => 30,
		notification_period => "24x7",
		notification_options => "d,u,r",
		mode => 0444,
	}

	nagios_host{ "group10mgmt.foo.org.nz":
		target => "/etc/nagios3/conf.d/ppt_hosts.cfg",
		alias => "mgmt",
		check_period => "24x7",
		max_check_attempts => 3,
		check_command => "check-host-alive",
		notification_interval => 30,
		notification_period => "24x7",
		notification_options => "d,u,r",
		mode => 0444,
	}
}
