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
    version = "v1.33.1";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.33.1";
      fetchSubmodules = true;
      sha256 = "sha256-cbWeY1keetge8kjQhtK0wWJ2hTLgLb5T0uMqfrWNpMs=";
    };
  };
  imhex-git = {
    pname = "imhex-git";
    version = "696612385a530de7d7b13b05e156483c85c7a845";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "696612385a530de7d7b13b05e156483c85c7a845";
      fetchSubmodules = true;
      sha256 = "sha256-RgO/zftA2Hu/K8pc8RCe0Kh9biH+HcCPR0xPWdHBG68=";
    };
    date = "2024-03-29";
  };
  imhex-patterns = {
    pname = "imhex-patterns";
    version = "ImHex-v1.33.1";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "ImHex-v1.33.1";
      fetchSubmodules = false;
      sha256 = "sha256-tC7WllIFjWMvRjuHTsHHUG5g/Ptluv8WfzaLSp1PpkQ=";
    };
  };
  imhex-patterns-git = {
    pname = "imhex-patterns-git";
    version = "cb6caafa646459c77467d2994023cb1a4bffd86d";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "cb6caafa646459c77467d2994023cb1a4bffd86d";
      fetchSubmodules = false;
      sha256 = "sha256-U21BDoAg2KMUvqUQ//s4+C4LLk6lm/2rG9XX+NeZw18=";
    };
    date = "2024-03-29";
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
    version = "0.5.4";
    src = fetchurl {
      url = "https://ziglang.gallery.vsassets.io/_apis/public/gallery/publisher/ziglang/extension/vscode-zig/0.5.4/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-zig-0.5.4.zip";
      sha256 = "sha256-kczkVm847COmpNtUJI5lsZIuM7qAU6UgE8SCj8ZhIaA=";
    };
  };
  vscord = {
    pname = "vscord";
    version = "5.2.1";
    src = fetchurl {
      url = "https://LeonardSSH.gallery.vsassets.io/_apis/public/gallery/publisher/LeonardSSH/extension/vscord/5.2.1/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscord-5.2.1.zip";
      sha256 = "sha256-2biP0q808DAiXO3PSwaiXeEr58yxkNI1XrIVB5ZdAFs=";
    };
  };
}
