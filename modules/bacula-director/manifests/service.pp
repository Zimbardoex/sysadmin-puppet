class bacula-director::service{
  service { "bacula-director" :
    ensure => running,
           hasstatus => true,
           hasrestart => true,
           enable => true,
  }
}
