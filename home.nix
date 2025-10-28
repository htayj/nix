{ config, pkgs, ...}:
{
  home.username = "tay";
  home.homeDirectory = "/home/tay";
  home.stateVersion = "25.11";
  programs.bash = {
    enable= true;
    shellAliases={
      test = "echo this is a test"; }; };
  home.packages = with pkgs; [
    bat
    emacs ];
}
