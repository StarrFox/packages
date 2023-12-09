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
  mrpack-install = pkgs.callPackage ./mrpack-install {source = source.mrpack-install;};

  andromeda = pkgs.callPackage ./andromeda {source = source.andromeda;};
  vscord = pkgs.callPackage ./vscord {source = source.vscord;};
  vscode-zig = pkgs.callPackage ./vscode-zig {source = source.vscode-zig;};
  vscode-coconut = pkgs.callPackage ./vscode-coconut {source = source.vscode-coconut;};

  python311 = pkgs.python311.override {
    enableOptimizations = true;
    reproducibleBuild = false;
    self = python311;
  };

  python312 = pkgs.python312.override {
    enableOptimizations = true;
    reproducibleBuild = false;
    self = python312;
  };

  # TODO: remove
  olafNim = pkgs.nim2.overrideAttrs {
    src = pkgs.fetchFromGitHub {
      owner = "nim-lang";
      repo = "Nim";
      rev = "devel";
      hash = "sha256-qaSq/xJJ4/j8YSXD6EQncUeE+c1uoHlS8iFWmQ2ZBoU=";
    };
  };
}
