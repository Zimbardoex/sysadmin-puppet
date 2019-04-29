class nagios-slack-notifications::config{
	file {'/usr/lib/nagios/plugins/nagios.pl':
		ensure => present,
		source => 'puppet:///modules/nagios-slack-notifications/nagios.pl',
		mode => 0755,
		owner => "root",
		group => "root",
		require => Class['nagios::install'],	
	}
	file {'/etc/nagios-plugins/config/slack.cfg':
		ensure => present,
		source => 'puppet:///modules/nagios-slack-notifications/slack.cfg', 
		mode => 0755,
		owner => "root",
		group => "root",
		require => Class['nagios::install'],	
	}
}
