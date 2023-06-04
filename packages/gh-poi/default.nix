{
  buildGoModule,
  source,
}:
buildGoModule {
  inherit (source) pname version src vendorSha256;
  doCheck = false;
}
