{ lib, mkFormatterModule, ... }:
{
  meta.maintainers = [ "drew-council" ];
  meta.brokenPlatforms = lib.platforms.darwin;

  imports = [
    (mkFormatterModule {
      name = "dockerfmt";
      args = [
        "-w"
        "-n"
      ];
      includes = [
        "*/Dockerfile"
        "*.dockerfile"
      ];
    })
  ];
}
