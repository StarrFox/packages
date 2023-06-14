# Packages

nix packages

## Usage

to update the packages in this repo do

```shell
nix develop --command just update
```

to use them just to

```shell
nix run github:StarrFox/packages#<package name>
```

## Binary Cache

there is a binary cache at <https://starrfox.cachix.org>

## Adding a package

- create a nvfetcher entry in packages/nvfetcher.toml
- run `just new <name>`
- edit `packages/<name>/default.nix` to use the generated src
- add package to packages/default.nix
- add package to [Current packages](#current-packages)

## Current packages

[ImHex](https://github.com/WerWolv/ImHex)

[Commitizen](https://github.com/commitizen-tools/commitizen)

[Gh-Poi](https://github.com/seachicken/gh-poi)

[Plcli](https://github.com/WerWolv/PatternLanguage/tree/master/cli): cli version of imhex's pattern language

[Vscord](https://github.com/LeonardSSH/vscord)

## Resources

[Nobbz's package action](https://github.com/NobbZ/nixos-config/blob/4acd7fe978495e25a228586c380160be91d6bd63/.github/workflows/flake-update.yml#L9-L39)
