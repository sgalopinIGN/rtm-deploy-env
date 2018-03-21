node 'ogam.dev.net' {
    class { 'ogam':
        vhost_servername => 'ogam.dev.net',
        admin_ip_address => '192.168.50.1',
        host_ip_address => '192.168.50.18',
        pg_user => 'postgres',
        pg_password => 'postgres',
        app_name => 'ogam'
    }
}