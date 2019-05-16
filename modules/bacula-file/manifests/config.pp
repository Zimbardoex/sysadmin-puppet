class bacula-file::config{
  file { '/etc/bacula/bacula-fd.conf':
    ensure=>present,
      content=>template("bacula-file/bacula-fd.conf"),
      mode=>0644,
      owner=>"root",
      group=>"root",
      notify=>Class["bacula-file::service"]
  }
}
