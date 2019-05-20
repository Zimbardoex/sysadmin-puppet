class ssh_authorized::config{
				file { '/etc/ssh/sshd_config':
								owner => "root",
								group => "root",
								mode => 0440,
								source => "puppet:///modules/ssh_authorized/etc/ssh/sshd_config",
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

				ssh_authorized_key { 'Manager':
						ensure   => present,
						name     => 'Manager',
						user     => 'manager',
						type     => 'ssh-rsa', 
						key=>'AAAB3NzaC1yc2EAAAABJQAAAgEAhoyO7v1iKFn91oeB9g26IRlfjJ0EduGtlxyi7GX0dVPVK/mRNzArhKKgmPAGL9SSbFOKkoCCf51DytebODBUshznWtettpfiejVNkBMZuTSJQ2ZF4TxlK80ZkgEUkdd5DxOJdEBMDFe2q0K0M+6rEcfT6ddxVGunCvq9EF3jFdm6bvAaZ248scVLRqUYNxatnnLKtKqNz9OERVBC31uL6CFMi7fYOENBG1+82tu0dKPlIt0D5A5ZUQ9aNMg9b+Ie9JDERDbb9BxSk/6nDHdKxJxQ1Z39hcTvf/INMdYE75BD5A8lGr/1ushKColCy2Ew5ywMGZ2qncHPgKBLdwQhYJdM6VA8voRw993j/VWqKY3enQu4vEWePZPzyJgukt7ctVmupl8eacygLJyDGE3hGi9HRYctg+JAYjteWTq9pO6s7Dd9DNTsjdd104l8bjOz0ZDbdVPPQxfdf5owhQmiAg1saHxWOpCDkaphrNWq2fjhlamA0lYDb9H4wHL40X5UYv3whx7EmZAUhYvFYwTqOmHoWWarrBq73fs8sE2TkqlKwVGAD8PDTH+K3MSwuLypnNnR70jY5mXOU2z6v9M5m3U4JkI5au+kMGa96fEcMo09c73dJtlvxhmH2viYzlS1nnu9Sy4Kr86+d9gaou4u8kGLqEbJkghST6HtnpWYK7s=',
					}
}
