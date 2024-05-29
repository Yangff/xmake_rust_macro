add_requires("cargo::bind", {
    configs = {
        cargo_toml = path.join(os.projectdir(), "bind", "Cargo.toml"),
    }
})

target("rsystem")
    add_files("bind/src/main.rs")
    add_packages("cargo::bind")