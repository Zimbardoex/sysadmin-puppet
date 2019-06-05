class owncloud::install{
# Note: These are all using php7.0 as that is what apache2 defaults to
  package {'apache2': ensure => present}
  package {'libapache2-mod-php': ensure => present}
  package {'php7.0-mysql': ensure => present}
  package {'php7.0-mbstring': ensure => present}
  package {'php7.0-gettext': ensure => present}
  package {'php7.0-intl': ensure => present}
  package {'php7.0-redis': ensure => present}
  package {'php7.0-imagick': ensure => present}
  package {'php7.0-igbinary': ensure => present}
  package {'php7.0-gmp': ensure => present}
  package {'php7.0-curl': ensure => present}
  package {'php7.0-gd': ensure => present}
  package {'php7.0-zip': ensure => present}
  package {'php7.0-imap': ensure => present}
  package {'php7.0-ldap': ensure => present}
  package {'php7.0-bz2': ensure => present}
  package {'php7.0-xml': ensure => present}
}
