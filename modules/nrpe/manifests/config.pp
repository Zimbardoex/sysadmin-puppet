class nrpe::config{
	file{"/etc/nagios/nrpe.cfg":
			ensure=>present,
			source=>"puppet:///modules/nrpe/nrpe.cfg",
			mode=>0644,
			owner=>"root",
			group=>"root",
			require=>Class["nrpe::install"],
			notify=>Class["nrpe::service"]
	}
		
	file{"/usr/lib/nagios/plugins/check_mem.pl":
			ensure=>present,
			source=>"puppet:///modules/nrpe/check_mem.pl",
			mode=>0774,
			owner=>"nagios",
			group=>"root",
			require=>Class["nrpe::install"],
			notify=>Class["nrpe::service"]
	}

	file{"/var/log/inotify":
		ensure => directory,
		mode => 0776,
		owner => "root",
		group => "root",
		require => Class["nrpe::install"],
		notify => Class["nrpe::service"]	
	}

	file{"/var/log/inotify/inotify.log":
			ensure=>present,
			mode=>0774,
			owner=>"nagios",
			group=>"root",
			require=>Class["nrpe::install"],
			notify=>Class["nrpe::service"]
	}

	file{"/usr/lib/nagios/plugins/check_filechange":	
			ensure=>present,
			source=>"puppet:///modules/nrpe/check_filechange",
			mode=>0774,
			owner=>"nagios",
			group=>"root",
			require=>Class["nrpe::install"],
			notify=>Class["nrpe::service"]
	}
}
