default: update

check:
    nix flake check

update-packages: && format
    nvfetcher --config packages/nvfetcher.toml --build-dir packages/_sources/ --commit-changes

update: && update-packages
    nix flake update

format:
    alejandra .
    deadnix . --edit
