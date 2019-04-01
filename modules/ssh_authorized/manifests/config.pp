class ssh_authorised::config{
				file { '/etc/ssh/sshd_config':
								owner => "root",
								group => "root",
								mode => 0440,
								source => "puppet:///modules/ssh_authorised/etc/ssh/ssd_config",
				}

				ssh_authorized_key { 'nichtj3':
						ensure   => present,
						name     => 'nichtj3-Kate',
						user     => 'nichtj3',
						type     => 'ssh-rsa', 
						key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpXv6cvMHDmKrE2W4HzyFns6BC8If+Kd2PtQyDhuXJUIaCYgurkGB/JMNYiqkxSNUaKzrcwOmrO7ey+gucdf/GUkBm5oHeWuWTHca1gAChJ4Td8Jzr2cr0ntQu6Otw3QETN/vQT7hayFip20fuiADMoSA9rpZktzRsdIJStsLjFS09gvk5HmPEbuNBmK1w54mBIaPc5dp+7s04YGLLnAfFtSV5KvNuoI/J80wuG421yFIIIllXrkAWaIdDxnGpZgLqnSR9IP4DRSj1XTRhgrzV3iqB/MuQUWzuzWdGNrGqfjW2+j6EsgChDgNxxA/Jpw990CBEfeqYpMcFhX5N59m5',
					}
				 
				ssh_authorized_key { 'Liam':
						ensure   => present,
						name     => 'Liam-Kate',
						user     => 'Liam',
						type     => 'ssh-rsa', 
						key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDd9P4iwgNGXYKE3HBwzKTJgjWDVeaxJSUobrcIAcD0sOR3EEMMjDiB+1HCGizhseYWGGWphHI2AE5oeFV9Chs0gEU3ruY/FMTFRJD1Y47KFQ76nDEHq0m/wWf2zQBJwxX19desZFG+Hat7I2P88pcqx2Wle/EydbBifn1X5CU3cqEqjAxRcuRD2Kx+wwoXGjc0Q/UqlltmGvihVg0zonZIDFwXTyFIBIuY8BFu+C3LmCjsM1iuZc+aaDc3GLoq1hEJdJI2TuY5ULCkZ6n/8F7xASDupg+42WZgbdho2iwCZKxsOByO/vV6Vpuq7lDy5mYLXRuMfvbxCkzpHs/fskVt',
					}
}
