default: update check

check:
    nix flake check

update-packages: && format
    nvfetcher --config packages/nvfetcher.toml --build-dir packages/_sources/

update: && update-packages
    nix flake update

format:
    alejandra .
    deadnix . --edit --exclude ./packages/_sources/generated.nix
