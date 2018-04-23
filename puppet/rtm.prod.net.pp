node 'rtm.prod.net' {
	class { 'rtm':
		vhost_servername => 'rtm.prod.net',
		cookie_domain => '.prod.net',
		admin_ip_address => '192.168.50.1',
		host_ip_address => '192.168.50.22',
		pg_user => 'postgres',
		pg_password => 'postgres'
	}
}