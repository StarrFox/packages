{
  pkgs,
  fetchurl,
  ...
}: {
  vscord = pkgs.vscode-utils.buildVscodeExtension rec {
    pname = "vscord";
    version = "5.1.10";
    src = fetchurl {
      url = "https://LeonardSSH.gallery.vsassets.io/_apis/public/gallery/publisher/LeonardSSH/extension/vscord/5.1.10/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscord-5.1.10.zip";
      sha256 = "sha256-fcRDOCzQWLllJ8gxSwj5XwDecgQijk9g9KkvwOn+g9s=";
    };
    name = pname;
    vscodeExtPublisher = "LeonardSSH";
    vscodeExtName = "vscord";
    vscodeExtUniqueId = "LeonardSSH.vscord";
  };
}
