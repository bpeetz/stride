use lib_flutter_rust_bridge_codegen::codegen;
use lib_flutter_rust_bridge_codegen::codegen::Config;
use lib_flutter_rust_bridge_codegen::utils::logs::configure_opinionated_logging;

fn main() -> anyhow::Result<()> {
    // Only rerun binding generation if the API directory changes.
    //
    // NOTE: This accelerates the build process, but you will need to manually trigger binding
    // generation whenever there are changes to definitions outside of the api directory that it
    // depends on.
    println!("cargo:rerun-if-changed=src/api");

    // If you want to see logs
    // Alternatively, use `cargo build -vvv` (instead of `cargo build`) to see logs on screen
    configure_opinionated_logging("./logs/", true)?;

    // Execute code generator with auto-detected config
    codegen::generate(
        Config::from_config_file("../flutter_rust_bridge.yaml")?.unwrap(),
        Default::default(),
    )
}
