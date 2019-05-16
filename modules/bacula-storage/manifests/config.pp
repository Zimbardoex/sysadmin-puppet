class bacula-storage::config{
  file { '/etc/bacula/bacula-sd.conf':
    ensure=>present,
      content=>template("bacula-storage/bacula-sd.conf"),
      mode=>0644,
      owner=>"root",
      group=>"root",
      notify=>Class["bacula-storage::service"]
  }
}
