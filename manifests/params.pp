class ntp::params {
  $package_name       = 'ntp'
  $package_ensure     = 'present'
  $config_name        = 'ntp.conf'
  $config_file_mode   = '0644'
  $servers            = ['pakaya', 'ponnaya', 'hutta']
  $service_ensure     = 'running'
  $service_enable     = true
  $service_hasstatus  = true
  $service_hasrestart = true

  $service_name = $facts['os']['family'] ? {
    'Debian' => 'ntp',
    default  => 'ntpd',
  }
}
