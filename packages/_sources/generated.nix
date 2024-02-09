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
    version = "09dd25dc0a5d9c61c2bdaf3cd05325a72843c86a";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "09dd25dc0a5d9c61c2bdaf3cd05325a72843c86a";
      fetchSubmodules = true;
      sha256 = "sha256-bArzvIJmdkbzjZ8qhivfk8Q76Kwfk6UrMJhs5TsXhtU=";
    };
    date = "2024-02-08";
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
    version = "b2bc248447bffab1b6fb3dcf1d1d05794c799607";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "b2bc248447bffab1b6fb3dcf1d1d05794c799607";
      fetchSubmodules = false;
      sha256 = "sha256-hQtnM7xa5zx2ROp66YWTmu/Z4bVUDCtOCYgJYYdhFiQ=";
    };
    date = "2024-01-31";
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
