# Public: Disable the screensaver when the pointer is in the desired corner.
class osx::dock::set_disable_screensaver_corner {
  include osx::dock

  boxen::osx_defaults { 'Disable the screensaver when the pointer is in the desired corner.':
    user   => $::boxen_user,
    key    => 'wvous-tl-corner',
    domain => 'com.apple.dock',
    value  => 6,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'Disable the screensaver when the pointer is in the desired corner immediately.':
    user   => $::boxen_user,
    key    => 'wvous-tl-modifier',
    domain => 'com.apple.dock',
    value  => 0,
    notify => Exec['killall Dock'];
  }

}
