default:
    just --list

check:
    nix flake check

update-packages: && format
    nvfetcher --config packages/nvfetcher.toml --build-dir packages/_sources/ --verbose

update: && update-packages check
    nix flake update

format:
    alejandra .
    deadnix . --edit --exclude ./packages/_sources/generated.nix

new name:
    mkdir "packages/{{name}}"
    nix-init packages/{{name}}
