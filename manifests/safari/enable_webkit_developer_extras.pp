# Public: Enable the Inspector in any WebView in Safari.
#
# This can be used for any WebKit WebView by setting the application
# in domain.

class osx::safari::enable_webkit_developer_extras {
    boxen::osx_defaults { 'Enable the Inspector in Safari.':
        user   => $::boxen_user,
        key    => 'WebKitDeveloperExtrasEnabledPreferenceKey',
        domain => 'com.apple.Safari',
        value  => true
    }
}
