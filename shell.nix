{ pkgs ? import <nixpkgs> {} }:
with pkgs;

let
in pkgs.callPackage ./derivation.nix {
  buildGoPackage = super: buildGoPackage (super // {

    name = super.name + "-env";

    buildInputs = (super.buildInputs or []) ++ [
      # Project dependencies

      # utilities
      git
    ];

  });
}
