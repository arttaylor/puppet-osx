# Internal: Restart Safari when necessary.
#
# Example
#
#   boxen::osx_defaults { 'Do a thing':
#     # ... other stuff here ...
#     notify => Exec['killall Mail'];
#   }
class osx::safari {
  exec { 'killall Safari':
    refreshonly => true
  }
}

