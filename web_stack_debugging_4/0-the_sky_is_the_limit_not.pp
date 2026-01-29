# Updates nginx default settings to increase file descriptor limits and restarts the service
exec { 'fix-issue':
  command => 'sed -i "s/15/4096/" /etc/default/nginx; sudo service nginx restart',
  path    => '/usr/bin/:/usr/sbin:/bin/'
}
