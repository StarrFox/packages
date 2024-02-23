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
    version = "e6854d6a6a932a2750d27727d4cd3f44f29ee92a";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "e6854d6a6a932a2750d27727d4cd3f44f29ee92a";
      fetchSubmodules = true;
      sha256 = "sha256-55CFlJ12groJdlSU4Xoq3vj6pXtSRz/ijqve/tSh45A=";
    };
    date = "2024-02-22";
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
    version = "834e5261b34e1eeeba68783e9222d0e61c5d15cd";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "834e5261b34e1eeeba68783e9222d0e61c5d15cd";
      fetchSubmodules = false;
      sha256 = "sha256-DdCPnIx2iQBl5MUgB//DXROLWLH5/fjUtYEiu03m91c=";
    };
    date = "2024-02-18";
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
    vendorHash = "sha256-az+NpP/hCIq2IfO8Bmn/qG3JVypeDljJ0jWg6yT6hks=";
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
