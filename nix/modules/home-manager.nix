# nix/modules/home-manager.nix — auto-generated from lava-helm.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.lava-helm; in {
  options.programs.lava-helm = {
    enable = lib.mkEnableOption "lava-helm";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-helm or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
