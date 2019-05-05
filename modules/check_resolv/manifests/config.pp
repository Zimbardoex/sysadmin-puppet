class check_resolv::config{
	file { '/etc/puppet/check_resolv':
   		ensure => 'directory',
  	}
	
	file { '/etc/puppet/check_resolv/check_resolv.sh':
		ensure=>present,
		source=>"puppet:///modules/check_resolv/check_resolv.sh",
		mode=>0644,
		owner=>"root",
		group=>"root",
		notify=>Class["check_resolv::service"]
        }

	file { '/etc/puppet/check_resolv/resolv.conf':
		ensure=>present,
		source=>"puppet:///modules/check_resolv/resolv.conf",
		mode=>0644,
		owner=>"root",
		group=>"root",
		notify=>Class["check_resolv::service"]
        }

	cron { 'check-resolv':   
		command => "bash /etc/puppet/check_resolv/check_resolv.sh",   
		user    => root,
		hour    => '*',   
		minute  => '*',
		notify  => Class["check_resolv::service"]
	}
}
