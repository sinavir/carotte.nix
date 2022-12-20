{ pkgs ? import ./nix { } }:
let carottepy = import ./. { inherit pkgs; };
in pkgs.mkShell {
  name = "carotte.py";
  packages = [ carottepy  ];
}
