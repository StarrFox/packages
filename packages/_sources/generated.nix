# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  andromeda = {
    pname = "andromeda";
    version = "1.8.1";
    src = fetchurl {
      url = "https://EliverLara.gallery.vsassets.io/_apis/public/gallery/publisher/EliverLara/extension/andromeda/1.8.1/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "andromeda-1.8.1.zip";
      sha256 = "sha256-O0WIewAExQTLlwstAglx1/6ukLntAqXxOEKRzw/5wKA=";
    };
  };
  gh-poi = {
    pname = "gh-poi";
    version = "v0.9.8";
    src = fetchFromGitHub {
      owner = "seachicken";
      repo = "gh-poi";
      rev = "v0.9.8";
      fetchSubmodules = false;
      sha256 = "sha256-QpUZxho9hzmgbCFgNxwwKi6hhfyqc4b/JYKH3rP4Eb8=";
    };
    vendorHash = "sha256-D/YZLwwGJWCekq9mpfCECzJyJ/xSlg7fC6leJh+e8i0=";
  };
  imhex = {
    pname = "imhex";
    version = "v1.31.0";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.31.0";
      fetchSubmodules = true;
      sha256 = "sha256-lIk8oPEpiPgglPgUjsJuh2hIx/Qg1kf9tTFvH3gX8XA=";
    };
  };
  imhex-git = {
    pname = "imhex-git";
    version = "2b5789631f43c1911a8f39b9a49d14ad2101105b";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "2b5789631f43c1911a8f39b9a49d14ad2101105b";
      fetchSubmodules = true;
      sha256 = "sha256-U7XQhcKPrHnqwB+IpuC5pU5SLuG3ecaU2fCR87AmDDU=";
    };
    date = "2023-12-19";
  };
  imhex-patterns = {
    pname = "imhex-patterns";
    version = "ImHex-v1.31.0";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "ImHex-v1.31.0";
      fetchSubmodules = false;
      sha256 = "sha256-HC4Lm5G73flDeCqh69YK8oxY1lDhQPTBdlDfxI/Zl7c=";
    };
  };
  imhex-patterns-git = {
    pname = "imhex-patterns-git";
    version = "a7e6209791c25eff9ba2374de005dbeb3fe7379c";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "a7e6209791c25eff9ba2374de005dbeb3fe7379c";
      fetchSubmodules = false;
      sha256 = "sha256-WnY7nunW67+9xzIbo5Jpi6n0feno7spkyZrTalbsAxA=";
    };
    date = "2023-12-07";
  };
  monokai-highcontrast = {
    pname = "monokai-highcontrast";
    version = "1.1.1";
    src = fetchurl {
      url = "https://DataByne.gallery.vsassets.io/_apis/public/gallery/publisher/DataByne/extension/theme-monokai-hc/1.1.1/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "theme-monokai-hc-1.1.1.zip";
      sha256 = "sha256-ZB6QS4Xj/dHrV5RBDBKC82D7YKo+EMTS1tiyIr/lvKg=";
    };
  };
  mrpack-install = {
    pname = "mrpack-install";
    version = "v0.16.9";
    src = fetchFromGitHub {
      owner = "nothub";
      repo = "mrpack-install";
      rev = "v0.16.9";
      fetchSubmodules = false;
      sha256 = "sha256-Dhq+dv4lVec2gRVTV+5N6UHg7tZOT4RZkjHt+QwrBXc=";
    };
    vendorHash = "sha256-ZWaWwsAqAcewCyAzDjp9rBBJTl4RsCsA4efBDEcGVss=";
  };
  vscode-coconut = {
    pname = "vscode-coconut";
    version = "2.2.2";
    src = fetchurl {
      url = "https://evhub.gallery.vsassets.io/_apis/public/gallery/publisher/evhub/extension/coconut/2.2.2/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "coconut-2.2.2.zip";
      sha256 = "sha256-QMh4kNeDFCMGYsmdwumHEXmcXfbgN2oMfjmH1iRDGR4=";
    };
  };
  vscode-zig = {
    pname = "vscode-zig";
    version = "0.5.1";
    src = fetchurl {
      url = "https://ziglang.gallery.vsassets.io/_apis/public/gallery/publisher/ziglang/extension/vscode-zig/0.5.1/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-zig-0.5.1.zip";
      sha256 = "sha256-ygxvkewK5Tf1zNIXxzu6D/tKYNVcNsU9cKij7d5aRdQ=";
    };
  };
  vscord = {
    pname = "vscord";
    version = "5.1.18";
    src = fetchurl {
      url = "https://LeonardSSH.gallery.vsassets.io/_apis/public/gallery/publisher/LeonardSSH/extension/vscord/5.1.18/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscord-5.1.18.zip";
      sha256 = "sha256-pJ9loVW1uhlITXSNBsCEgW+o3ABn0cxcZxg6S7cKWHI=";
    };
  };
}
