class webbrowser::firefox (
  $package    = 'firefox',
) {

  yumrepo { 'CentOS-7-Updates':
    ensure      => 'present',
    descr		    => 'CentOS-7 - Updates Repository',
    mirrorlist  => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra',
    gpgcheck	  => 1,
    enabled		  => 1,
  }

  package { $package:
    ensure		=> 'installed',
    require		=> Yumrepo["CentOS-7-Updates"],
  }
}