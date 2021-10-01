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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIOckfC907EeZyLIVevuPdS/8dxzciwT5wJS0DIySwdNFhLGYFWGNfTXSjdu+A2HAtePKmmIgTpFu5SfQrSyWOfwHBlPtL238/r2LY7olxmBr1u06alXpVpAhNXfCy9mBvtxnSG7Aer0Jxy3jzyXsqCGx3ih2sRVnF7yccAS0zS8QbX1TI6H7MRJp9UxeeUha5Wzofc0a/v2fg3P/TYH0KEF2QSAX+FKwjYdy3W3nD/Nf8hgAGJsmv83pCTWxsUr+q6tIlr4YCVV2K299rcZxdxZOSPmzPYUsiGAWxTD5U0N1osmtpbcerczCHP8iO9WHN6emvY0taDf1a1ARc08Qt',
	}  
}
