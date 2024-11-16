{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.git ];

  languages.rust.enable = true;

  scripts = {
    run.exec = "cargo run";
    rr.exec = "cargo run --release"; # run release binary
    build.exec = "cargo build";
    release.exec = "cargo build --release";
    clean.exec = "rm -rf ./target";
  };
}
