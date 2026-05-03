# Freedesktop SDK Junction
#
kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  ref: freedesktop-sdk-25.08.11-0-g30517eb37d146e6dcfa1b0e9337ff835e3473ee5
  track: freedesktop-sdk-25.08.*

config:
  options:
    # Pass through target architecture to the junction
    target_arch: '%{target-arch}'
    # For i686 targets, use x86_64 for bootstrap to avoid circular dependencies
    (?):
    - target_arch == 'i686':
        bootstrap_build_arch: 'x86_64'
