class npre::install{
		package{"nagios-npre-server":
			ensure=>present,
			requires=>User["nagios"],
		}

		user{"nagios":
			ensure=>present,
			requires=>Group["nagios"],
		}

		Group{"nagios":
			ensure=>present,
		}
}
