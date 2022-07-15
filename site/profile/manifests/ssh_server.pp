class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCr/oDoTWhy48MsCmzZJ0Azw7GgPozuifLSyBsy7LVdcii9c39nh+InB6XwssNqb9G39E5jnbDSH7wPkhHSuTDxhTJHYzGc8q2EES86KiO4/GGPbKx2LTFW2yWqBbTv/BHmw0AfoaULsOvCZBM3bUx5iAiPJVhZcMh1xw4pujJlgYU3CEtLPyLrhBVJ+KM5ycBjTpdKTzQZo55TIZ4XKL3etE0TddIKO8q12t2/euSEOhHt6moRdcfDGh6+26naCF+Vo//CGWuhZqLFyG5GsoAMeP3IMXTFeI+/6OKGYSnGLHfodbu0JitY58ngwIlFFlNHVXugQ6e09zshAJXvpVzv',
	}  
}
