{
  copyDesktopItems,
  fetchurl,
  jre,
  lib,
  makeDesktopItem,
  makeWrapper,
  stdenv,
  steam-run,
  withSteamRun ? true,
  writeShellScript,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "atlauncher";
  version = "3.4.29.0";

  src = fetchurl {
    url = "https://github.com/ATLauncher/ATLauncher/releases/download/v${finalAttrs.version}/ATLauncher-${finalAttrs.version}.jar";
    hash = "sha256-jZYcX7a51c0hq/sJrP2cKrjSwjrtw/lyRnd1SNBHIJA=";
  };

  dontUnpack = true;

  buildInputs = [];
  nativeBuildInputs = [copyDesktopItems makeWrapper];

  installPhase = let
    # hack to use steam-run along with the exec
    steamrun = writeShellScript "steamrun" ''
      shift
      exec ${steam-run}/bin/steam-run "''$@"
    '';
  in ''
    runHook preInstall
    mkdir -p $out/bin
    makeWrapper ${jre}/bin/java $out/bin/atlauncher \
      --add-flags "-jar $src --working-dir=\$HOME/.atlauncher --no-launcher-update" \
      --suffix LD_LIBRARY_PATH : "${lib.makeLibraryPath finalAttrs.buildInputs}" ${
      lib.strings.optionalString withSteamRun ''--run "${steamrun} \\"''
    }
    runHook postInstall
  '';

  desktopItems = [
    (makeDesktopItem {
      name = finalAttrs.pname;
      exec = finalAttrs.pname;
      icon = fetchurl {
        url = "https://avatars.githubusercontent.com/u/7068667";
        hash = "sha256-YmEkxf4rZxN3jhiib0UtdUDDcn9lw7IMbiEucBL7b9o=";
      };
      desktopName = "ATLauncher";
      categories = ["Game"];
    })
  ];
})
