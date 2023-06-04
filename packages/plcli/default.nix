{
  gcc12Stdenv,
  cmake,
  llvm,
  pkg-config,
  source,
}:
gcc12Stdenv.mkDerivation {
  inherit (source) pname version src;

  nativeBuildInputs = [cmake llvm pkg-config];

  cmakeFlags = [
    "-DLIBPL_ENABLE_TESTS=OFF"
    "-DLIBPL_ENABLE_CLI=ON"
  ];
}
