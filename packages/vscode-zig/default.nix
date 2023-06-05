{
  pkgs,
  source,
  ...
}: {
  vscode-zig = pkgs.vscode-utils.buildVscodeExtension rec {
    inherit (source) pname version src;
    name = pname;
    vscodeExtPublisher = "ziglang";
    vscodeExtName = "vscode-zig";
    vscodeExtUniqueId = "ziglang.vscode-zig";
  };
}
