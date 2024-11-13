{
  description = "Holvi package collection";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      packages = import ./nix {inherit pkgs;};
    in {
      packages = packages;

      apps =
        builtins.mapAttrs (name: package: {
          type = "app";
          program = "${package}/bin/${name}";
        })
        packages;
    });
}
