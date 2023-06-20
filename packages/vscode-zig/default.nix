{
  pkgs,
  fetchurl,
  ...
}: {
  vscode-zig = pkgs.vscode-utils.buildVscodeExtension rec {
    pname = "vscode-zig";
    version = "0.4.0";
    src = fetchurl {
      url = "https://ziglang.gallery.vsassets.io/_apis/public/gallery/publisher/ziglang/extension/vscode-zig/0.4.0/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-zig-0.4.0.zip";
      sha256 = "sha256-03jBiss14kSkYdbC8IzrBWBgL4Js7xDOwog1WiyNPHk=";
    };
    name = pname;
    vscodeExtPublisher = "ziglang";
    vscodeExtName = "vscode-zig";
    vscodeExtUniqueId = "ziglang.vscode-zig";
  };
}
