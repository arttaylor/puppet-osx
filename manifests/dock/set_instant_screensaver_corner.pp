# Public: Start the screensaver when the pointer is in the desired corner.
class osx::dock::set_instant_screensaver_corner {
  include osx::dock

  boxen::osx_defaults { 'Start the screensaver when the pointer is in the desired corner.':
    user   => $::boxen_user,
    key    => 'wvous-tr-corner',
    domain => 'com.apple.dock',
    value  => 5,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'Start the screensaver when the pointer is in the desired corner immediately.':
    user   => $::boxen_user,
    key    => 'wvous-tr-modifier',
    domain => 'com.apple.dock',
    value  => 0,
    notify => Exec['killall Dock'];
  }

}
