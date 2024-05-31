add_requires("cargo::bind", {
    configs = {
        cargo_toml = path.join(os.projectdir(), "bind", "Cargo.toml"),
    }
})

set_arch("x86_64-unknown-linux-gnu")

target("bind")
    set_kind("binary")
    add_files("bind/src/main.rs")
    add_packages("cargo::bind")
