class npre::config{
	file{"/etc/nagios/npre.cfg":
			ensure=>present,
			source=>"puppet:///modules/npre/npre.cfg",
			mode=>0644,
			owner=>"root",
			group=>"root",
			require=>class["nagios::install"],
			notify=>class["nagios::service"]
	}
}
