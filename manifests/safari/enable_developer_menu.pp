# Public: Enable the developer menu in Safari.
class osx::safari::enable_developer_menu {
    boxen::osx_defaults { 'Enable the developer menu in Safari.':
        user   => $::boxen_user,
        key    => 'IncludeDevelopMenu',
        domain => 'com.apple.Safari',
        value  => true
    }
}
