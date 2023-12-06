{
  pkgs,
  source,
  ...
}:
pkgs.vscode-utils.buildVscodeExtension rec {
  inherit (source) pname version src;
  name = pname;
  vscodeExtPublisher = "evhub";
  vscodeExtName = "coconut";
  vscodeExtUniqueId = "evhub.coconut";
}
