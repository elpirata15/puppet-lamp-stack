class tools {

  # package install list
  $packages = [
    "git",
    "curl",
    "vim",
    "htop"
  ]

  # install packages
  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}
