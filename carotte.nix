{ setuptoolsBuildHook, stdenv, buildPythonPackage, colorama, colored-traceback, assignhooks }:
let 
  setup = ./setup.py;
in
buildPythonPackage rec {
  pname = "carotte.py";
  version = "1.0.2";
  src = (import ./nix/sources.nix)."carotte.py";
  preConfigure = ''
    mv carotte.py __init__.py
    mkdir carottepy 
    mv __init__.py alt_transformer.py alt_instrument.py carottepy
    mkdir lib_carotte
    mv lib_carotte.py lib_carotte/__init__.py
    cp ${setup} ./setup.py
  '';
  patches = [ ./carotte.patch ];
  propagatedBuildInputs = [ colorama colored-traceback assignhooks ];
  wheel = stdenv.mkDerivation {
    pname = "carotte.py-wheel";
    inherit src version preConfigure propagatedBuildInputs patches;
    buildInputs = [ setuptoolsBuildHook ];
    installPhase = ''
      mkdir -p $out
      mv dist/* $out/
      '';
  };

}
