{ config, pkgs, ...}:
{
  home.username = "tay";
  home.homeDirectory = "/home/tay";
  home.stateVersion = "25.11";
  programs.bash = {
    enable= true;
    shellAliases={
      reload = "sudo nixos-rebuild switch --impure --flake ~/nixos/";
      vim = "nvim" ;}; };
  home.packages = with pkgs; [
    bat
    emacs
  ];
}
