{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    gnumake
    go
    gopls
    gotools
    golines
    python314
    rocq-core
    ocamlPackages.lambdapi
  ];
}
