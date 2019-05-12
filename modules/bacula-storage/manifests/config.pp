class bacula-storage::config{
  file { '/etc/bacula/bacula-sd.conf':
    ensure=>present,
      source=>"puppet:///modules/bacula-director/bacula-sd.conf",
      mode=>0644,
      owner=>"root",
      group=>"root",
      notify=>Class["bacula-storage::service"]
  }
}
