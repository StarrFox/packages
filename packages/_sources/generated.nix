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
  github-code-owners = {
    pname = "github-code-owners";
    version = "3.3.0";
    src = fetchurl {
      url = "https://chdsbd.gallery.vsassets.io/_apis/public/gallery/publisher/chdsbd/extension/github-code-owners/3.3.0/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "github-code-owners-3.3.0.zip";
      sha256 = "sha256-cMybIQnLHV+yacjKRJUiulI9kqZbVkjkbt/ycwZI5CA=";
    };
  };
  imhex = {
    pname = "imhex";
    version = "v1.32.2";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.32.2";
      fetchSubmodules = true;
      sha256 = "sha256-MYOZHQMYbbP01z0FyoCgTzwY1/71eUCmJYYfYvN9+so=";
    };
  };
  imhex-git = {
    pname = "imhex-git";
    version = "61b164a18390f0d38262fea1c2d731e8502f32ea";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "61b164a18390f0d38262fea1c2d731e8502f32ea";
      fetchSubmodules = true;
      sha256 = "sha256-wY+ZSPHHEKmWMRUEvWDMNp9cxvCvQUMWpb6A7kKJ8vc=";
    };
    date = "2024-02-17";
  };
  imhex-patterns = {
    pname = "imhex-patterns";
    version = "ImHex-v1.32.2";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "ImHex-v1.32.2";
      fetchSubmodules = false;
      sha256 = "sha256-K+LiQvykCrOwhEVy37lh7VSf5YJyBQtLz8AGFsuRznQ=";
    };
  };
  imhex-patterns-git = {
    pname = "imhex-patterns-git";
    version = "0e2966f10d2c8295de12e215f683d5558451fc36";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "0e2966f10d2c8295de12e215f683d5558451fc36";
      fetchSubmodules = false;
      sha256 = "sha256-UHhx7oBNl7YIp4B8AVFHaZFRQYCXg+5o7iRW5JV4H4A=";
    };
    date = "2024-02-09";
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
    version = "v0.16.10";
    src = fetchFromGitHub {
      owner = "nothub";
      repo = "mrpack-install";
      rev = "v0.16.10";
      fetchSubmodules = false;
      sha256 = "sha256-mTAXFK97t10imdICpg0UI4YLF744oscJqoOIBG5GEkc=";
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
  vscode-lark = {
    pname = "vscode-lark";
    version = "0.1.0";
    src = fetchurl {
      url = "https://dirk-thomas.gallery.vsassets.io/_apis/public/gallery/publisher/dirk-thomas/extension/vscode-lark/0.1.0/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-lark-0.1.0.zip";
      sha256 = "sha256-uIXQsi+p3N+Yqzf5quYciv3t4PiK9EN1nwFiH+WHHz8=";
    };
  };
  vscode-zig = {
    pname = "vscode-zig";
    version = "0.5.3";
    src = fetchurl {
      url = "https://ziglang.gallery.vsassets.io/_apis/public/gallery/publisher/ziglang/extension/vscode-zig/0.5.3/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-zig-0.5.3.zip";
      sha256 = "sha256-F6MDfVwmOpq4hgmIh0k9UW/ziAeT9aenri5E5z2mGw0=";
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
