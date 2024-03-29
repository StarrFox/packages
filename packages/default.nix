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
  };

  gh-poi = pkgs.callPackage ./gh-poi {source = source.gh-poi;};
  mrpack-install = pkgs.callPackage ./mrpack-install {source = source.mrpack-install;};

  # TODO: try putting these in a subattr set; i.e. vscode-extensions.chdsbd.github-code-owners
  andromeda = pkgs.callPackage ./andromeda {source = source.andromeda;};
  vscord = pkgs.callPackage ./vscord {source = source.vscord;};
  vscode-zig = pkgs.callPackage ./vscode-zig {source = source.vscode-zig;};
  vscode-coconut = pkgs.callPackage ./vscode-coconut {source = source.vscode-coconut;};
  monokai-highcontrast = pkgs.callPackage ./monokai-highcontrast {source = source.monokai-highcontrast;};
  vscode-lark = pkgs.callPackage ./vscode-lark {source = source.vscode-lark;};
  github-code-owners = pkgs.callPackage ./github-code-owners {source = source.github-code-owners;};

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
