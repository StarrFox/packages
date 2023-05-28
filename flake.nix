{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    nixpkgs,
    ...
  }: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    packages.x86_64-linux = import ./packages {inherit pkgs;};

    devShells.x86_64-linux = {
      default = pkgs.mkShell {
        name = "starr-packages";
        packages = with pkgs; [
          alejandra
          just
          deadnix
          rnix-lsp
          nvfetcher
        ];
      };
    };
  };
}
