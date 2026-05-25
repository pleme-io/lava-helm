# nix/modules/darwin.nix — auto-generated from lava-helm.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.lava-helm; in {
  options.services.lava-helm = {
    enable = lib.mkEnableOption "lava-helm";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-helm or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
