{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    gnumake
    go
    gotools
    python314
    rocq-core
    ocamlPackages.lambdapi
  ];
}
