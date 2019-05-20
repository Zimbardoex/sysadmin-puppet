class bacula-mysql-backup::config{
	file{'/etc/bacula/mysql-backup':
		ensure => 'directory',
		mode => 766,
	}
	
	cron { 'backup-mysql':
		command => "mysqldump --all-databases --add-drop-table > /etc/bacula/mysql-backup.db-backup.sql",
		user    => root,
		hour    => '22',
		minute  => '20',
	}
}
