class bacula-director::config{
  file { '/etc/bacula/bacula-dir.conf':
    ensure=>present,
      source=>"puppet:///modules/bacula-director/bacula-dir.conf",
      mode=>0644,
      owner=>"root",
      group=>"root",
      notify=>Class["check_resolv::service"]
  }
  file { '/etc/bacula/bconsole.conf':
    ensure=>present,
      source=>"puppet:///modules/bacula-director/bconsole.conf",
      mode=>0644,
      owner=>"root",
      group=>"root",
      notify=>Class["check_resolv::service"]
  }
}