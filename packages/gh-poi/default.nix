{
  buildGoModule,
  source,
  lib,
}:
buildGoModule {
  inherit (source) pname src vendorHash;
  version = lib.strings.removePrefix "v" source.version;
  doCheck = false;
}
