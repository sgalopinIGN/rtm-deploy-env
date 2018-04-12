node 'ogam.dev.net' {
    class { 'ogam':
        vhost_servername => 'ogam.dev.net',
        admin_ip_address => '192.168.50.1',
        host_ip_address => '192.168.50.18',
        mailer_ip_address => '192.134.133.226', # smtp1.ign.fr
        pg_user => 'postgres',
        pg_password => 'postgres',
        app_name => 'ogam'
    }
}