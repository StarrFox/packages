{
  gcc12Stdenv,
  source,
}:
gcc12Stdenv.mkDerivation rec {
  inherit (source) pname version src;
}