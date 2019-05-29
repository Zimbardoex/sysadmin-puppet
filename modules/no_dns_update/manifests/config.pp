class no_dns_update::config{
	file{'/etc/dhcp/dhclient-enter-hooks.d/nodnsupdate':
		ensure => present,
		source=>"puppet:///modules/no_dns_update/nodnsupdate",
		mode=>0644,
		owner=>"root",
		group=>"root",
	}
}
