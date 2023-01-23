{ pkgs ? import ./nix {} }:
let
  pyPkgs = pkgs.python310Packages;
  colored-traceback = pyPkgs.colored-traceback.overrideAttrs (old: {
    buildInputs = []; 
    propagatedBuildInputs = old.buildInputs;
  });
  assignhooks = pyPkgs.callPackage ./assignhooks.nix {};
in
pyPkgs.callPackage ./carotte.nix { inherit assignhooks colored-traceback; }
