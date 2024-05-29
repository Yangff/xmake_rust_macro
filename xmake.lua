add_requires("cargo::bind", {
    configs = {
        cargo_toml = path.join(os.projectdir(), "bind", "Cargo.toml"),
    }
})

set_arch("x86_64-unknown-linux-gnu")

target("rsystem")
    add_files("bind/src/main.rs")
    add_packages("cargo::bind")