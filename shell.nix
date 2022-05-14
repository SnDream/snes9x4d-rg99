{ pkgs ? import <nixpkgs> {} }:

let
  fhs = pkgs.buildFHSUserEnv {
    name = "snes9x4d";
    targetPkgs = pkgs: with pkgs; [
      gcc10
      git
      gnumake
      SDL.dev
      zlib.dev
    ];
    profile = ''
      export hardeningDisable=all
    '';
  };
in fhs.env
