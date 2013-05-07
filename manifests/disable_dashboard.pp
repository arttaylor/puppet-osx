class osx::disable_dashboard {
    boxen::osx_defaults { 'Disable Dashboard':
        key    => 'mcx-disabled',
        domain => 'com.apple.dashboard',
        value  => 'YES',
        user => $::boxen_user
    }
}
