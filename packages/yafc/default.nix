{ lib
, fetchFromGitHub
, buildDotnetModule
, dotnetCorePackages
}:

buildDotnetModule {
  pname = "yafc";
  version = "0.6.0";

  src = fetchFromGitHub {
    owner = "ShadowTheAge";
    repo = "yafc";
    rev = "master";
    hash = "sha256-g6odJ1Fjgml52/yZ7r/OFUXhui/7HEqx72PFmIZ/i28=";
  };

  nugetDeps = ./deps.nix;

  projectFile = "YAFC/YAFC.csproj";

  meta = with lib; {
    description = "Powerful Factorio calculator/analyser that works with mods";
    homepage = "https://github.com/ShadowTheAge/yafc";
    license = licenses.gpl3Only;
    mainProgram = "yafc";
    platforms = platforms.all;
  };
}
