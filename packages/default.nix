{pkgs, ...}: {
  imhex = pkgs.callPackage ./imhex {};
  gh-poi = pkgs.callPackage ./gh-poi {};
  commitizen = pkgs.python3Packages.callPackage ./commitizen {};
  plcli = pkgs.callPackage ./plcli {};
  vscord = (pkgs.callPackage ./vscord {}).vscord;
  vscode-zig = (pkgs.callPackage ./vscode-zig {}).vscode-zig;
}
