{ buildPythonApplication, colorama, colored-traceback, assignhooks }:
let 
  setup = ./setup.py;
in
buildPythonApplication {
  pname = "carotte.py";
  version = "1.0.2";
  src = (import ./nix/sources.nix)."carotte.py";
  preConfigure = ''
    mv carotte.py __init__.py
    mkdir carottepy 
    mv __init__.py alt_transformer.py lib_carotte.py carottepy
    cp ${setup} ./setup.py
    ls -lah
  '';
  patches = [ ./lib_carotte.patch ];
  doCheck = false; #Quand ce sera bien packagé upstream on pourra faire ça
  propagatedBuildInputs = [ colorama colored-traceback assignhooks ];
}
