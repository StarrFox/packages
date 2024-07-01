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
    version = "v0.10.1";
    src = fetchFromGitHub {
      owner = "seachicken";
      repo = "gh-poi";
      rev = "v0.10.1";
      fetchSubmodules = false;
      sha256 = "sha256-ZQkXXaa4n88bJdgP2FSXtgBrUi39teO98SzZq+I5doM=";
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
    version = "v1.35.3";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.35.3";
      fetchSubmodules = true;
      sha256 = "sha256-8vhOOHfg4D9B9yYgnGZBpcjAjuL4M4oHHax9ad5PJtA=";
    };
  };
  imhex-git = {
    pname = "imhex-git";
    version = "71880ad2adaaf4f397eadf4d178d476dac2a9b51";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "71880ad2adaaf4f397eadf4d178d476dac2a9b51";
      fetchSubmodules = true;
      sha256 = "sha256-N0UAmFmFhunQ9np22wCk/e672fjoscP5k66WF4B8yjk=";
    };
    date = "2024-06-30";
  };
  imhex-patterns = {
    pname = "imhex-patterns";
    version = "ImHex-v1.35.3";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "ImHex-v1.35.3";
      fetchSubmodules = false;
      sha256 = "sha256-h86qoFMSP9ehsXJXOccUK9Mfqe+DVObfSRT4TCtK0rY=";
    };
  };
  imhex-patterns-git = {
    pname = "imhex-patterns-git";
    version = "21a0b99eaca5609e3adbe8bdf7adba56072b0d3e";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "21a0b99eaca5609e3adbe8bdf7adba56072b0d3e";
      fetchSubmodules = false;
      sha256 = "sha256-yIT/baejUMdlJ16caUBeR6jutlmKdg+wKU4AUQoKpGY=";
    };
    date = "2024-06-29";
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
    version = "2.2.4";
    src = fetchurl {
      url = "https://evhub.gallery.vsassets.io/_apis/public/gallery/publisher/evhub/extension/coconut/2.2.4/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "coconut-2.2.4.zip";
      sha256 = "sha256-oi6Ct17wf0e6fB/Wf9Gy1wY+Q19WV15TjgJIBdJr198=";
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
    version = "5.2.12";
    src = fetchurl {
      url = "https://LeonardSSH.gallery.vsassets.io/_apis/public/gallery/publisher/LeonardSSH/extension/vscord/5.2.12/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscord-5.2.12.zip";
      sha256 = "sha256-WGDEizYG6UAqe1jnhvjfFouXDA9Yr5P+BjxPahAIsTE=";
    };
  };
}
