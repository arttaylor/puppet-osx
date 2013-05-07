# Public: Prefer list view in Finder windows.
class osx::finder::prefer_list_view {
    include osx::finder
    
    boxen::osx_defaults { 'Prefer list view in Finder.':
        user   => $::boxen_user,
        key    => 'FXPreferredViewStyle',
        domain => 'com.apple.finder',
        value  => 'Nlsv',
        notify => Exec['killall Finder'];
    }
}
