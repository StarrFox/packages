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
    version = "81982aa821a7edebbc2d65d98998d002e06bc736";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "81982aa821a7edebbc2d65d98998d002e06bc736";
      fetchSubmodules = true;
      sha256 = "sha256-5HQHXcso3o4u2dUaJllXV13KAuZBOCDg8gXhGCp3h9I=";
    };
    date = "2024-04-27";
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
    version = "03298b0b0c7c06330238d50c08cc3304a58af49a";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "03298b0b0c7c06330238d50c08cc3304a58af49a";
      fetchSubmodules = false;
      sha256 = "sha256-W5FSe/W0nFYY9D6cmkuTsvI/Pz174kVlAZV1rstEyIA=";
    };
    date = "2024-04-21";
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
    version = "0.5.6";
    src = fetchurl {
      url = "https://ziglang.gallery.vsassets.io/_apis/public/gallery/publisher/ziglang/extension/vscode-zig/0.5.6/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-zig-0.5.6.zip";
      sha256 = "sha256-qwlSBwOIkUNuI50ktHcqZwJ0e5q9N+dq3F7QsfN2um8=";
    };
  };
  vscord = {
    pname = "vscord";
    version = "5.2.9";
    src = fetchurl {
      url = "https://LeonardSSH.gallery.vsassets.io/_apis/public/gallery/publisher/LeonardSSH/extension/vscord/5.2.9/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscord-5.2.9.zip";
      sha256 = "sha256-HJvVpX2cativdyxsnVjJBRvITwmkyoWehafWL95S2B0=";
    };
  };
}
