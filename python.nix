{ pkgs ? import ./nix {} }:
pkgs.python39.withPackages (ps: [
  (ps.colored-traceback.overrideAttrs (old: {
    buildInputs = []; 
    propagatedBuildInputs = old.buildInputs;
  }))
  (ps.callPackage ./assignhooks.nix {})
  ps.colorama
])
