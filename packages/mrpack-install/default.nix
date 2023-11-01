{
  buildGoModule,
  source,
}:
buildGoModule {
  inherit (source) pname version src vendorHash;
  ldflags = ["-s" "-w"];
  doCheck = false;
}
