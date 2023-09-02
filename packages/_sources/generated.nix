# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  commitizen = {
    pname = "commitizen";
    version = "3.7.0";
    src = fetchFromGitHub {
      owner = "commitizen-tools";
      repo = "commitizen";
      rev = "3.7.0";
      fetchSubmodules = false;
      sha256 = "sha256-KfPIGQ4kIjV/Vuza5wdzp0R62LUluJQ5tY6I8BPFmGk=";
    };
  };
  gh-poi = {
    pname = "gh-poi";
    version = "v0.9.4";
    src = fetchFromGitHub {
      owner = "seachicken";
      repo = "gh-poi";
      rev = "v0.9.4";
      fetchSubmodules = false;
      sha256 = "sha256-Tu0OfjjNKWPNnVUp5Mvgk7W/NjDAEglMpJ+wyAzUoXQ=";
    };
    vendorSha256 = "sha256-D/YZLwwGJWCekq9mpfCECzJyJ/xSlg7fC6leJh+e8i0=";
  };
  imhex = {
    pname = "imhex";
    version = "v1.30.1";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.30.1";
      fetchSubmodules = true;
      sha256 = "sha256-3s9Dgdhl+k2KjMoSHNl59YOoCEwqK+37DOzKdGP88/4=";
    };
  };
  imhex-patterns = {
    pname = "imhex-patterns";
    version = "ImHex-v1.30.1";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "ImHex-v1.30.1";
      fetchSubmodules = false;
      sha256 = "sha256-W+6CjakG6cgOxCCcMYFff7Z6VWkEf0krmBr7BKucpCE=";
    };
  };
  mrpack-install = {
    pname = "mrpack-install";
    version = "v0.16.7";
    src = fetchFromGitHub {
      owner = "nothub";
      repo = "mrpack-install";
      rev = "v0.16.7";
      fetchSubmodules = false;
      sha256 = "sha256-aGIfCd5k8zCKwi/U2Ry4d+9ff4zmFTfl8W0n0m0IJwQ=";
    };
  };
  plcli = {
    pname = "plcli";
    version = "ImHex-v1.30.1";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "PatternLanguage";
      rev = "ImHex-v1.30.1";
      fetchSubmodules = true;
      sha256 = "sha256-dYcdBlYydOAJ4dEODCB+GLkmbbdXjwtBOgQmjmz7irk=";
    };
  };
  vscode-zig = {
    pname = "vscode-zig";
    version = "0.4.3";
    src = fetchurl {
      url = "https://ziglang.gallery.vsassets.io/_apis/public/gallery/publisher/ziglang/extension/vscode-zig/0.4.3/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscode-zig-0.4.3.zip";
      sha256 = "sha256-H89/09Ufq7ewh7uRC41NYjhbWnFrdamd7ykRmJfGXDQ=";
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
