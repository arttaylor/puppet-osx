# Public: Show file extensions in finder
class osx::finder::show_file_extensions {
  include osx::finder

  boxen::osx_defaults { 'Show file extensions':
    ensure => present,
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'AppleShowAllFiles',
    value  => 0,
    notify => Exec['killall Finder'];
  }
}
