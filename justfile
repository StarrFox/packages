# show this list
default:
    just --list

# check flake
check:
    nix flake check

# update packages
update-packages: && format
    nvfetcher --config packages/nvfetcher.toml --build-dir packages/_sources/

# updates packages ending in -git
update-git-packages: && format
    nvfetcher --config packages/nvfetcher.toml --build-dir packages/_sources/ --filter ".+-git"

# update inputs, packages and check
update: && update-packages check
    nix flake update

# update, commit, and push
full: update
    git add .
    git commit -am "update"
    git push

# format with alejandra
format:
    alejandra .
    deadnix . --edit --exclude ./packages/_sources/generated.nix

# create a new package named <name>
new name:
    mkdir "packages/{{name}}"
    nix-init packages/{{name}}
