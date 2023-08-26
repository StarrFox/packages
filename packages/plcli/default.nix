{
  gcc12Stdenv,
  cmake,
  llvm,
  pkg-config,
  fetchFromGitHub,
}:
gcc12Stdenv.mkDerivation {
  pname = "plcli";
  version = "ImHex-v1.30.1";
  src = fetchFromGitHub {
    owner = "WerWolv";
    repo = "PatternLanguage";
    rev = "ImHex-v1.30.1";
    fetchSubmodules = true;
    sha256 = "sha256-dYcdBlYydOAJ4dEODCB+GLkmbbdXjwtBOgQmjmz7irk=";
  };

  nativeBuildInputs = [cmake llvm pkg-config];

  cmakeFlags = [
    "-DLIBPL_ENABLE_TESTS=OFF"
    "-DLIBPL_ENABLE_CLI=ON"
  ];
}
