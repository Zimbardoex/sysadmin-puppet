class bacula-director::config{
  file { '/etc/bacula/bacula-fd.conf':
    ensure=>present,
      source=>"puppet:///modules/bacula-director/bacula-fd.conf",
      mode=>0644,
      owner=>"root",
      group=>"root",
      notify=>Class["check_resolv::service"]
  }
}
