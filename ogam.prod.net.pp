node 'ogam.prod.net' {
	class { 'ogam':
		vhost_servername => 'ogam.prod.net',
		admin_ip_address => '192.168.50.1',
		host_ip_address => '192.168.50.19',
		pg_user => 'postgres',
		pg_password => 'postgres',
		app_name => 'ogam'
	}
}