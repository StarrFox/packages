{
  buildGoModule,
  source,
  lib,
}:
buildGoModule {
  inherit (source) pname src vendorSha256;
  version = lib.strings.removePrefix "v" source.version;
  doCheck = false;
}
