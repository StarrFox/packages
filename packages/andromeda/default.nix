{
  pkgs,
  source,
  ...
}: {
  andromeda = pkgs.vscode-utils.buildVscodeExtension rec {
    inherit (source) pname version src;
    name = pname;
    vscodeExtPublisher = "EliverLara";
    vscodeExtName = "andromeda";
    vscodeExtUniqueId = "EliverLara.andromeda";
  };
}
