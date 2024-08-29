{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git
    pkgs.python311Packages.notebook
    pkgs.python311Packages.tables
  ];

  # https://devenv.sh/languages/
  languages.python.enable = true;
  languages.python.package = pkgs.python311;
  languages.python.venv.enable = true;
  languages.python.venv.requirements = "/Users/rhill/local/src/rch/CML_Dask_HDF5";
}

