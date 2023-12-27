{
  pkgs,
  source,
  ...
}:
pkgs.vscode-utils.buildVscodeExtension rec {
  inherit (source) pname version src;
  name = pname;
  vscodeExtPublisher = "chdsbd";
  vscodeExtName = "github-code-owners";
  vscodeExtUniqueId = "chdsbd.github-code-owners";
}
