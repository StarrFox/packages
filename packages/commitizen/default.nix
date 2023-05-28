{
  buildPythonApplication,
  charset-normalizer,
  colorama,
  decli,
  fetchFromGitHub,
  jinja2,
  packaging,
  poetry-core,
  pyyaml,
  questionary,
  termcolor,
  tomlkit,
  typing-extensions,
  argcomplete,
  importlib-metadata,
  source
}:
buildPythonApplication rec {
  inherit (source) pname version src;

  format = "pyproject";

  nativeBuildInputs = [poetry-core];

  postPatch = ''
    substituteInPlace pyproject.toml \
      --replace 'charset-normalizer = "^2.1.0"' 'charset-normalizer = "*"' \
      --replace 'argcomplete = ">=1.12.1,<2.1"' 'argcomplete = ">=1.12.1"' \
      --replace 'decli = "^0.6.0"' 'decli = "*"'
  '';

  propagatedBuildInputs = [
    charset-normalizer
    termcolor
    questionary
    colorama
    decli
    tomlkit
    jinja2
    pyyaml
    argcomplete
    typing-extensions
    packaging
    importlib-metadata
  ];

  doCheck = false;
}
