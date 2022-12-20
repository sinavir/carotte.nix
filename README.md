# `carotte.nix`

A nix expression for [`carotte.py`](https://github.com/TWal/carotte.py) hdl

The `default.nix` file produces the `carottepy` python package with
`carotte.py` as an entry point as well as the `lib_carotte` package

A `shell.nix` is also available it will drop you in an environment with the cli
and a python executable containing `carottepy` and `lib_carotte` packages
