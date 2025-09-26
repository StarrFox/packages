{
  gcc12Stdenv,
  build_env ? gcc12Stdenv,
  cmake,
  llvm_17,
  mbedtls,
  gtk3,
  pkg-config,
  capstone,
  dbus,
  libGLU,
  glfw3,
  file,
  perl,
  python3,
  curl,
  fmt,
  #nlohmann_json,
  yara,
  rsync,
  source,
  patterns_source,
  fetchFromGitHub,
  libarchive,
  lib,
}:
build_env.mkDerivation {
  inherit (source) pname src;

  version = lib.strings.removePrefix "v" source.version;

  nativeBuildInputs = [cmake llvm_17 python3 perl pkg-config rsync];

  buildInputs = [
    # TODO: check if the version in nixpkgs has upgraded
    (capstone.overrideAttrs {
      version = "5.0.1";
      src = fetchFromGitHub {
        owner = "capstone-engine";
        repo = "capstone";
        rev = "5.0.1";
        sha256 = "sha256-kKmL5sae9ruWGu1gas1mel9qM52qQOD+zLj8cRE3isg=";
      };
    })
    curl
    dbus
    file
    fmt
    glfw3
    gtk3
    libGLU
    mbedtls
    #nlohmann_json
    yara
    libarchive
  ];

  cmakeFlags = [
    "-DIMHEX_OFFLINE_BUILD=ON"
    "-DIMHEX_IGNORE_BAD_CLONE=ON"
    "-DUSE_SYSTEM_CAPSTONE=ON"
    "-DUSE_SYSTEM_CURL=ON"
    "-DUSE_SYSTEM_FMT=ON"
    "-DUSE_SYSTEM_LLVM=ON"
    #"-DUSE_SYSTEM_NLOHMANN_JSON=ON"
    "-DUSE_SYSTEM_YARA=ON"
  ];

  # TODO: rsync can be removed next update because imhex's make doesn't include them by default?
  # rsync is used here so we can not copy the _schema.json files
  postInstall = ''
    mkdir -p $out/share/imhex
    rsync -av --exclude="*_schema.json" ${patterns_source.src}/{constants,encodings,includes,magic,patterns} $out/share/imhex
  '';

  meta.mainProgram = "imhex";
}
