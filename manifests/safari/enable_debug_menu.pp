# Public: Enable the debug menu in Safari.
class osx::safari::enable_debug_menu {
    boxen::osx_defaults { 'Enable the debug menu in Safari.':
        user   => $::boxen_user,
        key    => 'IncludeInternalDebugMenu',
        domain => 'com.apple.Safari',
        value  => true
    }
}
