# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  andromeda = {
    pname = "andromeda";
    version = "1.8.2";
    src = fetchurl {
      url = "https://EliverLara.gallery.vsassets.io/_apis/public/gallery/publisher/EliverLara/extension/andromeda/1.8.2/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "andromeda-1.8.2.zip";
      sha256 = "sha256-ur+zXuKluJ0DZS5/S4RaomibnJuFy4SE4tk9i+9+ORc=";
    };
  };
  gh-poi = {
    pname = "gh-poi";
    version = "v0.9.10";
    src = fetchFromGitHub {
      owner = "seachicken";
      repo = "gh-poi";
      rev = "v0.9.10";
      fetchSubmodules = false;
      sha256 = "sha256-0QzCXja1UXPEC8JQIXH9Dl4PPKzqWgIy13FCYxEqggA=";
    };
    vendorHash = "sha256-D/YZLwwGJWCekq9mpfCECzJyJ/xSlg7fC6leJh+e8i0=";
  };
  github-code-owners = {
    pname = "github-code-owners";
    version = "4.1.0";
    src = fetchurl {
      url = "https://chdsbd.gallery.vsassets.io/_apis/public/gallery/publisher/chdsbd/extension/github-code-owners/4.1.0/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "github-code-owners-4.1.0.zip";
      sha256 = "sha256-/GlbPGzZV+EwdkjMWUprdggNGXF0Ws3224h4UGzA3hA=";
    };
  };
  imhex = {
    pname = "imhex";
    version = "v1.33.2";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.33.2";
      fetchSubmodules = true;
      sha256 = "sha256-8Ehpk0TjE4itQ7D9Nx74plYwABVufuYmxfxyuSqak1c=";
    };
  };
  imhex-git = {
    pname = "imhex-git";
    version = "bf518b3590f91444b158463272018a33ed491144";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "bf518b3590f91444b158463272018a33ed491144";
      fetchSubmodules = true;
      sha256 = "sha256-18frvj7PxryoOue651wBNhemxVSrnJGQUh0Rplp6ldU=";
    };
    date = "2024-06-09";
  };
  imhex-patterns = {
    pname = "imhex-patterns";
    version = "ImHex-v1.33.2";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "ImHex-v1.33.2";
      fetchSubmodules = false;
      sha256 = "sha256-5a6aFT8R8vMzPS+Y+fcDV5+olhioEpLjdMqa7qOyGsw=";
    };
  };
  imhex-patterns-git = {
    pname = "imhex-patterns-git";
    version = "3416d30f2b8fac4f12bf73aa1f5d5102a07b7f83";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "3416d30f2b8fac4f12bf73aa1f5d5102a07b7f83";
      fetchSubmodules = false;
      sha256 = "sha256-DFt+ZQ16tZONZPkM5t/fMSh1ZqZbnnYVSbPMnoBCOkE=";
    };
    date = "2024-06-09";
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
    version = "2.2.3";
    src = fetchurl {
      url = "https://evhub.gallery.vsassets.io/_apis/public/gallery/publisher/evhub/extension/coconut/2.2.3/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "coconut-2.2.3.zip";
      sha256 = "sha256-5PzL5NDLr8YTCQFAgXE1Ipb1WclFjKtcIdVBLWc593k=";
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
    version = "0.5.8";
    src = fetchurl {
      url = "https://ziglang.gallery.vsassets.io/_apis/public/gallery/publisher/ziglang/extension/vscode-zig/0.5.8/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-zig-0.5.8.zip";
      sha256 = "sha256-W5LaY7ZrTCnB/KMfAjNj6Qk2Mw6pGUGKJAurH2lReuA=";
    };
  };
  vscord = {
    pname = "vscord";
    version = "5.2.10";
    src = fetchurl {
      url = "https://LeonardSSH.gallery.vsassets.io/_apis/public/gallery/publisher/LeonardSSH/extension/vscord/5.2.10/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscord-5.2.10.zip";
      sha256 = "sha256-RKQcLiuzaPInZ1SG0Rg7a2oOZ3+EbiAu6er8YRLA0Fs=";
    };
  };
}
