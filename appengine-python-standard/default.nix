let
  pkgs = import <nixpkgs> { };
  build = pkgs.callPackage ./build.nix {
    buildPythonPackage = pkgs.python3Packages.buildPythonPackage;
  };
in
{
  inherit build;
  shell = pkgs.mkShellNoCC {
    packages = [
      (pkgs.python3.withPackages (ps: [ build ]))
    ];
  };
}