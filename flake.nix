{
  description = "starrpkgs";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts/";
    nix-systems.url = "github:nix-systems/default";
  };

  outputs = inputs @ {
    flake-parts,
    nix-systems,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      debug = true;
      systems = import nix-systems;
      perSystem = {pkgs, ...}: {
        packages = import ./packages {inherit pkgs;};

        devShells.default = pkgs.mkShell {
          name = "starr-packages";
          packages = with pkgs; [alejandra just deadnix nil nvfetcher nix-init];
        };
      };
    };
}
