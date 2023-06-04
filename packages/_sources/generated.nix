# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  commitizen = {
    pname = "commitizen";
    version = "3.2.2";
    src = fetchFromGitHub ({
      owner = "commitizen-tools";
      repo = "commitizen";
      rev = "3.2.2";
      fetchSubmodules = false;
      sha256 = "sha256-OHz1n4VTtjeTwuOPNtSh1J+BOz1mL7D+Xz4Qsul7W8I=";
    });
  };
  gh-poi = {
    pname = "gh-poi";
    version = "v0.9.1";
    src = fetchFromGitHub ({
      owner = "seachicken";
      repo = "gh-poi";
      rev = "v0.9.1";
      fetchSubmodules = false;
      sha256 = "sha256-7KZSZsYfo9zZ0HSg5yLDNTlwb30byD73kqMNHc0tQpo=";
    });
    vendorSha256 = "sha256-D/YZLwwGJWCekq9mpfCECzJyJ/xSlg7fC6leJh+e8i0=";
  };
  imhex = {
    pname = "imhex";
    version = "v1.29.0";
    src = fetchFromGitHub ({
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.29.0";
      fetchSubmodules = true;
      sha256 = "sha256-dghyv7rpqGs5dt51ziAaeb/Ba7rGEcJ54AYKRJ2xXuk=";
    });
  };
  imhex-patterns = {
    pname = "imhex-patterns";
    version = "ImHex-v1.29.0";
    src = fetchFromGitHub ({
      owner = "WerWolv";
      repo = "ImHex-Patterns";
      rev = "ImHex-v1.29.0";
      fetchSubmodules = false;
      sha256 = "sha256-lTTXu9RxoD582lXWI789gNcWvJmxmBIlBRIiyY3DseM=";
    });
  };
  plcli = {
    pname = "plcli";
    version = "ImHex-v1.29.0";
    src = fetchFromGitHub ({
      owner = "WerWolv";
      repo = "PatternLanguage";
      rev = "ImHex-v1.29.0";
      fetchSubmodules = true;
      sha256 = "sha256-1YPtffk8VmBnc1OeUwgH6otaT2T2oEp5/o3zVNgTcec=";
    });
  };
  vscord = {
    pname = "vscord";
    version = "5.1.10";
    src = fetchurl {
      url = "https://LeonardSSH.gallery.vsassets.io/_apis/public/gallery/publisher/LeonardSSH/extension/vscord/5.1.10/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "vscord-5.1.10.zip";
      sha256 = "sha256-fcRDOCzQWLllJ8gxSwj5XwDecgQijk9g9KkvwOn+g9s=";
    };
  };
}
