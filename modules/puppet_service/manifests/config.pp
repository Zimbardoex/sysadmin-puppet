class puppet_service::config{
	file {"/etc/puppet/puppet.conf":
		ensure => present,
		source => "puppet:///modules/puppet_service/etc/puppet/puppet.conf",
		mode => 0444,
		group => "root",
		require => Class["puppet_service::install"],
	}
}
