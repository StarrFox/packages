{
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule {
  pname = "gh-poi";
  version = "v0.9.2";
  src = fetchFromGitHub {
    owner = "seachicken";
    repo = "gh-poi";
    rev = "v0.9.2";
    fetchSubmodules = false;
    sha256 = "sha256-gRNoBbAYLLMD7UJPDvQHWR6jrt7RV3C0AZLAzaw1V1w=";
  };
  vendorSha256 = "sha256-D/YZLwwGJWCekq9mpfCECzJyJ/xSlg7fC6leJh+e8i0=";
  doCheck = false;
}
