{
  pkgs,
  source,
  ...
}:
pkgs.vscode-utils.buildVscodeExtension rec {
  inherit (source) pname version src;
  name = pname;
  vscodeExtPublisher = "LeonardSSH";
  vscodeExtName = "vscord";
  vscodeExtUniqueId = "LeonardSSH.vscord";
}
