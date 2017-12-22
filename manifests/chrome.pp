class webbrowser::chrome (
  $package		= 'google-chrome-stable',
) {

  yumrepo { 'google-chrome':
    ensure		=> 'present',
    descr		=> 'Google Chrome Repository',
    baseurl		=> "http://dl.google.com/linux/chrome/rpm/stable/\$basearch",
    gpgcheck	=> 1,
    enabled		=> 1,
    gpgkey		=> 'http://dl-ssl.google.com/linux/linux_signing_key.pub',
 #   unless		=> 'yum repolist | grep "google-chrome - x86_64"',
  }

  package { $package:
    ensure		=> 'installed',
    require		=> Yumrepo["google-chrome"],
  }
}