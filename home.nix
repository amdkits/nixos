{ config, pkgs, inputs, ... }:

{
  home.username = "kits";
  home.homeDirectory = "/home/kits";
  home.stateVersion = "25.05";
  home.packages = [
  ];
  
  imports = [
    ./home/kits/conf/term/ghostty.nix
    ./home/kits/conf/browser/brave.nix
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
