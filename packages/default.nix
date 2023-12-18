{pkgs, ...}: let
  source = import ./_sources/generated.nix {
    inherit (pkgs) fetchurl fetchgit fetchFromGitHub dockerTools;
  };
in rec {
  imhex = pkgs.callPackage ./imhex {
    source = source.imhex;
    patterns_source = source.imhex-patterns;
  };
  imhex-git = imhex.override {
    source = source.imhex-git;
    patterns_source = source.imhex-patterns-git;
    # git version requires llvm_17
    llvm = pkgs.llvm_17;
    # git version requires gcc13
    # not sure if I should just use 13 for both
    build_env = pkgs.gcc13Stdenv;
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
