class rsyslog(i
    ensure = 'installed', 
    service_ensure => 'running',
    service_enabled => 'true') {

    package { 'rsyslog':
        ensure  => $ensure,
    }

    service { 'rsyslog':
        ensure  => $service_ensure,
        enable  => $service_enable,
        require => Package['rsyslog'],
    }
}
