default: install-dev
set windows-powershell := true

# Run clippy lints
lint:
    cargo clippy --   \
        -D clippy::all \
        -D clippy::exit \
        -D clippy::perf  \
        -D clippy::cargo  \
        -D clippy::style   \
        -D clippy::nursery  \
        -D clippy::pedantic  \
        -D clippy::dbg_macro  \
        -D clippy::suspicious  \
        -D clippy::unwrap_used  \
        -D clippy::complexity    \
        -D clippy::create_dir     \
        -D clippy::correctness     \
        -W clippy::expect_used      \
        -A clippy::too-many-lines    \
        -A clippy::must-use-candidate \
        -A clippy::multiple-crate-versions \

# Install Ferium to cargo's binary folder
install:
    cargo install --force --path .

# Install Ferium to cargo's binary folder but debug
install-dev:
    cargo install --debug --force --path .

# Delete all build and test artefacts
clean:
    cargo clean
    rm -rf out
    rm -rf tests/mods
    rm -rf tests/md_modpack
    rm -rf tests/cf_modpack
    rm -rf tests/configs/running
