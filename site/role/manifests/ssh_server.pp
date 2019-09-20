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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSEoUuwsCIRQwBZNtTw0KyI/QJLSwv6xPQc7ZE1wsodWtY8zfy6g0db1U2xutghpit+njagEaGNnz8cY+g3e3upzCjst3ywfGOg2SN0sbBnsTWd23HLZXqNBfDGZavsj6FBhltTaw3N+DZl9kwYrXxFW1KpuwhjO5FLgbNCGF3ZTOwpq7/K5v8LCig3YFhUnzyxiHnwEoF/6xnZDNFm+XcrTavkZn5DubzGTJ2BEiz+TUP0FGfOY0aQvsHZFQw717CBS87GepQYp/E3wrubciVtDz9IBbIAwOyBloyfj/PNc6jkfg0nNeKsx9a94vE2cmO3TGAghG+RiHHfHyscMRv root@master.puppet.vm',
	}  
}
