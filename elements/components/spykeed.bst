kind: cargo

build-depends:
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/stripper.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
# Minimal runtime for build environment
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:spykee-resurrected/spykeed.git
  track: main 
  ref: 5dd25a29af9dce19389ee212fb2c2c5a5ec51dcc
# Vendored cargo dependencies (cargo2 source plugin)
# This ensures reproducible builds by pinning exact dependency versions
- kind: cargo2
