class owncloud::install{
  package {'apache2': ensure => present}
  package {'libapache2-mod-php': ensure => present}
  package {'php7.2-mysql': ensure => present}
  package {'php7.2-mbstring': ensure => present}
  package {'php7.2-gettext': ensure => present}
  package {'php7.2-intl': ensure => present}
  package {'php7.2-redis': ensure => present}
  package {'php7.2-imagick': ensure => present}
  package {'php7.2-igbinary': ensure => present}
  package {'php7.2-gmp': ensure => present}
  package {'php7.2-curl': ensure => present}
  package {'php7.2-gd': ensure => present}
  package {'php7.2-zip': ensure => present}
  package {'php7.2-imap': ensure => present}
  package {'php7.2-ldap': ensure => present}
  package {'php7.2-bz2': ensure => present}
  package {'php7.2-phpseclib': ensure => present}
}
