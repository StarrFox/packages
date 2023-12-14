{
  pkgs,
  source,
  ...
}:
pkgs.vscode-utils.buildVscodeExtension rec {
  inherit (source) pname version src;
  name = pname;
  vscodeExtPublisher = "DataByne";
  vscodeExtName = "theme-monokai-hc";
  vscodeExtUniqueId = "DataByne.theme-monokai-hc";
}
