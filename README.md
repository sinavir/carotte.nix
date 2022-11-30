# `carotte.nix`

A nix expression for [`carotte.py`](https://github.com/TWal/carotte.py) hdl

The `default.nix` file produces the `carottepy` python package with `carotte.py` as an entry point.

A `shell.nix` is also available

# Difference with the original

You must specify the following import for ` lib_carotte` instead of the one provided in `carotte.py` README:

```
from carottepy.lib_carotte import *
```

The following shell command can help acheiving the substitution:
```
sed -i 's/from lib_carotte/from carottepy.lib_carotte/g' [filename]
```
