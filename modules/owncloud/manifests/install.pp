class owncloud::install{
  package {'apache2': ensure => present}
  package {'libapache2-mod-php': ensure => present}
  package {'php-mysql': ensure => present}
  package {'php-mbstring': ensure => present}
  package {'php-gettext': ensure => present}
  package {'php-intl': ensure => present}
  package {'php-redis': ensure => present}
  package {'php-imagick': ensure => present}
  package {'php-igbinary': ensure => present}
  package {'php-gmp': ensure => present}
  package {'php-curl': ensure => present}
  package {'php-gd': ensure => present}
  package {'php-zip': ensure => present}
  package {'php-imap': ensure => present}
  package {'php-ldap': ensure => present}
  package {'php-bz2': ensure => present}
  package {'php-phpseclib': ensure => present}
}
