{ pkgs ? import ./nix {} }:
let
  carotte = import ./. { inherit pkgs; };
in
pkgs.mkShell {
  name = "carotte.py";
  packages = [ carotte.carottepy ];
}
