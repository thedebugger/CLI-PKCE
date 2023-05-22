{ pkgs ? (import <nixpkgs> {}).pkgs }:
with pkgs;
mkShell {
  shellHook = ''
    # Mark variables which are modified or created for export.
    set -a
    # or to make it relative to the directory of this shell.nix file
    source ${toString ./venv/bin/activate}
    set +a
  '';
  buildInputs = [
  ];
  LD_LIBRARY_PATH = "${stdenv.cc.cc.lib}/lib";
}
