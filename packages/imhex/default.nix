{
  gcc12Stdenv,
  cmake,
  llvm,
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
  fmt_8,
  nlohmann_json,
  yara,
  rsync,
  fetchFromGitHub,
}: let
  patterns_source = fetchFromGitHub {
    owner = "WerWolv";
    repo = "ImHex-Patterns";
    rev = "ImHex-v1.29.0";
    fetchSubmodules = false;
    sha256 = "sha256-lTTXu9RxoD582lXWI789gNcWvJmxmBIlBRIiyY3DseM=";
  };
in
  gcc12Stdenv.mkDerivation {
    pname = "imhex";
    version = "v1.29.0";
    src = fetchFromGitHub {
      owner = "WerWolv";
      repo = "imhex";
      rev = "v1.29.0";
      fetchSubmodules = true;
      sha256 = "sha256-dghyv7rpqGs5dt51ziAaeb/Ba7rGEcJ54AYKRJ2xXuk=";
    };

    nativeBuildInputs = [cmake llvm python3 perl pkg-config rsync];

    buildInputs = [
      capstone
      curl
      dbus
      file
      fmt_8
      glfw3
      gtk3
      libGLU
      mbedtls
      nlohmann_json
      yara
    ];

    cmakeFlags = [
      "-DIMHEX_OFFLINE_BUILD=ON"
      "-DIMHEX_IGNORE_BAD_CLONE=ON"
      "-DUSE_SYSTEM_CAPSTONE=ON"
      "-DUSE_SYSTEM_CURL=ON"
      "-DUSE_SYSTEM_FMT=ON"
      "-DUSE_SYSTEM_LLVM=ON"
      "-DUSE_SYSTEM_NLOHMANN_JSON=ON"
      "-DUSE_SYSTEM_YARA=ON"
    ];

    # TODO: rsync can be removed next update because imhex's make doesn't include them by default?
    # rsync is used here so we can not copy the _schema.json files
    postInstall = ''
      mkdir -p $out/share/imhex
      rsync -av --exclude="*_schema.json" ${patterns_source}/{constants,encodings,includes,magic,patterns} $out/share/imhex
    '';
  }
