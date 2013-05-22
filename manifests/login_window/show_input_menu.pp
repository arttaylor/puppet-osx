class osx::login_window::show_input_menu {
    boxen::osx_defaults { 'Show input menu':
        key    => 'showInputMenu',
        domain => 'com.apple.loginwindow',
        value  => 1,
        user => $::boxen_user
    }
}
