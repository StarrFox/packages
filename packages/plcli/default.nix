{
  gcc12Stdenv,
  cmake,
  llvm,
  pkg-config,
  fetchFromGitHub,
}:
gcc12Stdenv.mkDerivation {
  pname = "plcli";
  version = "ImHex-v1.29.0";
  src = fetchFromGitHub {
    owner = "WerWolv";
    repo = "PatternLanguage";
    rev = "ImHex-v1.29.0";
    fetchSubmodules = true;
    sha256 = "sha256-1YPtffk8VmBnc1OeUwgH6otaT2T2oEp5/o3zVNgTcec=";
  };

  nativeBuildInputs = [cmake llvm pkg-config];

  cmakeFlags = [
    "-DLIBPL_ENABLE_TESTS=OFF"
    "-DLIBPL_ENABLE_CLI=ON"
  ];
}
