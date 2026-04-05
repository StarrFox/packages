{
  stdenv,
  cmake,
  llvm,
  mbedtls,
  gtk3,
  pkg-config,
  capstone,
  dbus,
  libGLU,
  libGL,
  glfw3,
  file,
  perl,
  python3,
  curl,
  fmt,
  nlohmann_json,
  yara,
  source,
  patterns_source,
  libarchive,
  lib,
  autoPatchelfHook,
}:
stdenv.mkDerivation {
  inherit (source) pname src;

  version = lib.strings.removePrefix "v" source.version;

  nativeBuildInputs = [cmake llvm python3 perl pkg-config autoPatchelfHook];

  buildInputs = [
    capstone
    curl
    dbus
    file
    fmt
    glfw3
    gtk3
    libGLU
    mbedtls
    nlohmann_json
    yara
    libarchive
    llvm
  ];

  # autoPatchelfHook only searches for *.so and *.so.*, and won't find *.hexpluglib
  # however, we will append to RUNPATH ourselves
  autoPatchelfIgnoreMissingDeps = lib.optionals stdenv.hostPlatform.isLinux ["*.hexpluglib"];
  appendRunpaths = lib.optionals stdenv.hostPlatform.isLinux [
    (lib.makeLibraryPath [libGL])
    "${placeholder "out"}/lib/imhex/plugins"
  ];

  cmakeFlags = [
    (lib.cmakeBool "IMHEX_OFFLINE_BUILD" true)
    (lib.cmakeBool "IMHEX_COMPRESS_DEBUG_INFO" false) # avoids error: cannot compress debug sections (zstd not enabled)
    (lib.cmakeBool "IMHEX_GENERATE_PACKAGE" stdenv.hostPlatform.isDarwin)
    (lib.cmakeBool "USE_SYSTEM_CAPSTONE" true)
    (lib.cmakeBool "USE_SYSTEM_CURL" true)
    (lib.cmakeBool "USE_SYSTEM_FMT" true)
    (lib.cmakeBool "USE_SYSTEM_LLVM" true)
    (lib.cmakeBool "USE_SYSTEM_NLOHMANN_JSON" true)
    (lib.cmakeBool "USE_SYSTEM_YARA" true)
    (lib.cmakeFeature "CMAKE_POLICY_VERSION_MINIMUM" "3.5")
  ];

  env.NIX_CFLAGS_COMPILE = "-Wno-error=deprecated-declarations";

  postPatch = ''
    # Link patterns source into location expected by cmake when IMHEX_OFFLINE_BUILD is set
    ln -s ${patterns_source.src} ImHex-Patterns
  ''
  + lib.optionalString stdenv.hostPlatform.isDarwin ''
    substituteInPlace cmake/modules/PostprocessBundle.cmake \
      --replace-fail "fixup_bundle" "#fixup_bundle"
  '';

  # TODO: rsync can be removed next update because imhex's make doesn't include them by default?
  # rsync is used here so we can not copy the _schema.json files
  postInstall = ''
    # without this imhex is not able to find pattern files
    wrapProgram $out/bin/imhex --prefix XDG_DATA_DIRS : $out/share
  '';

  meta.mainProgram = "imhex";
}
