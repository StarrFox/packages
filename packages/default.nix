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
  imhex-git = pkgs.callPackage ./imhex {
    source = source.imhex-git;
    patterns_source = source.imhex-patterns-git;
    patches = [./imhex/llvm16_fix.patch];
  };
  gh-poi = pkgs.callPackage ./gh-poi {source = source.gh-poi;};
  mrpack-install = pkgs.callPackage ./mrpack-install {source = source.mrpack-install;};

  andromeda = pkgs.callPackage ./andromeda {source = source.andromeda;};
  vscord = pkgs.callPackage ./vscord {source = source.vscord;};
  vscode-zig = pkgs.callPackage ./vscode-zig {source = source.vscode-zig;};
  vscode-coconut = pkgs.callPackage ./vscode-coconut {source = source.vscode-coconut;};
  monokai-highcontrast = pkgs.callPackage ./monokai-highcontrast {source = source.monokai-highcontrast;};

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
}
