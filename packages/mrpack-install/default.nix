{
  buildGoModule,
  source,
}:
buildGoModule {
  inherit (source) pname version src;
  vendorHash = "sha256-tQbc8fIkSgC9G1m4tMzk7MrOGOwXhNH+GTVXDZR//54=";
  ldflags = ["-s" "-w"];
  doCheck = false;
}
