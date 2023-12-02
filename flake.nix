{
  description = "starrpkgs";

  inputs = {
    # TODO: update nixpkgs every os release
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    flake-parts.url = "github:hercules-ci/flake-parts/";
    nix-systems.url = "github:nix-systems/default";
    nvfetcher.url = "github:berberman/nvfetcher";
  };

  outputs = inputs @ {
    flake-parts,
    nix-systems,
    nvfetcher,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      debug = true;
      systems = import nix-systems;
      perSystem = {pkgs, ...}: {
        packages = import ./packages {inherit pkgs;};

        devShells.default = pkgs.mkShell {
          name = "starr-packages";
          packages = with pkgs; [
            alejandra
            just
            deadnix
            nil
            nvfetcher.packages.${pkgs.system}.default
            nix-init
          ];
        };
      };
    };
}
