{
  buildGoModule,
  source,
}:
buildGoModule {
  inherit (source) pname version src;
  vendorHash = "sha256-JjOd0PWRWHyxYEP5l6VIjrQxEDOHo7YLvbIB0OitBZ8=";
  ldflags = ["-s" "-w"];
  doCheck = false;
}
