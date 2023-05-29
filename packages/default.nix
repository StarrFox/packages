{pkgs, ...}: let
  source = import ./_sources/generated.nix {
    # TODO: make deadnix not remove these from generated.nix
    #fetchurl = pkgs.fetchurl;
    #fetchgit = pkgs.fetchgit;
    fetchFromGitHub = pkgs.fetchFromGitHub;
    #dockerTools = pkgs.dockerTools;
  };
in {
  imhex = pkgs.callPackage ./imhex {
    source = source.imhex;
    patterns_source = source.imhex-patterns;
  };
  gh-poi = pkgs.callPackage ./gh-poi {source = source.gh-poi;};
  commitizen = pkgs.python3Packages.callPackage ./commitizen {source = source.commitizen;};
}
