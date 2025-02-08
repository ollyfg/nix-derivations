{
  description = "Google's appengine-python-standard package";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs, flake-utils }: let
    system = "x86_64-linux";
  in {
      packages."${system}".default = let
        pkgs = import nixpkgs {
          inherit system;
        };
      in pkgs.callPackage ./build.nix {
        buildPythonPackage = pkgs.python3Packages.buildPythonPackage;
      }
    }
}