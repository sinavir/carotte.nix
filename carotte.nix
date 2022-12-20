{ buildPythonPackage, colorama, colored-traceback, assignhooks }:
let 
  setup = ./setup.py;
in
buildPythonPackage {
  pname = "carotte.py";
  version = "1.0.2";
  src = (import ./nix/sources.nix)."carotte.py";
  preConfigure = ''
    mv carotte.py __init__.py
    mkdir carottepy 
    mv __init__.py alt_transformer.py carottepy
    mkdir lib_carotte
    mv lib_carotte.py lib_carotte/__init__.py
    cp ${setup} ./setup.py
    ls -lah
  '';
  patches = [ ./carotte.patch ];
  propagatedBuildInputs = [ colorama colored-traceback assignhooks ];
}
