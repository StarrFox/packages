{
  pkgs,
  source,
  ...
}:
pkgs.vscode-utils.buildVscodeExtension rec {
  inherit (source) pname version src;
  name = pname;
  vscodeExtPublisher = "dirk-thomas";
  vscodeExtName = "vscode-lark";
  vscodeExtUniqueId = "dirk-thomas.vscode-lark";
}
