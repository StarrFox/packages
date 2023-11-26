{pkgs, ...}: let
  source = import ./_sources/generated.nix {
    fetchurl = pkgs.fetchurl;
    fetchgit = pkgs.fetchgit;
    fetchFromGitHub = pkgs.fetchFromGitHub;
    dockerTools = pkgs.dockerTools;
  };
in rec {
  imhex = pkgs.callPackage ./imhex {
    source = source.imhex;
    patterns_source = source.imhex-patterns;
  };
  gh-poi = pkgs.callPackage ./gh-poi {source = source.gh-poi;};
  commitizen = pkgs.python3Packages.callPackage ./commitizen {source = source.commitizen;};
  vscord = (pkgs.callPackage ./vscord {source = source.vscord;}).vscord;
  vscode-zig = (pkgs.callPackage ./vscode-zig {source = source.vscode-zig;}).vscode-zig;
  andromeda = (pkgs.callPackage ./andromeda {source = source.andromeda;}).andromeda;
  mrpack-install = pkgs.callPackage ./mrpack-install {source = source.mrpack-install;};

  python311Optimized = pkgs.python311.override {
    enableOptimizations = true;
    reproducibleBuild = false;
    self = python311Optimized;
  };

  python312Optimized = pkgs.python312.override {
    enableOptimizations = true;
    reproducibleBuild = false;
    self = python312Optimized;
  };
}
