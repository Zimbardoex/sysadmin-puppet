class nrpe::install{
	package{"nagios-nrpe-server":
		ensure=>present,
		require=>User["nagios"],
	}

	package{"inotify-tools":
		ensure => present,
	}

	user{"nagios":
		ensure=>present,

		require=>Group["nagios"],
	}

	group{"nagios":
		ensure=>present,
	}
}
