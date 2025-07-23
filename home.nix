{ config, pkgs, inputs, lib, ... }:

{
  home.username = "kits";
  home.homeDirectory = "/home/kits";
  home.stateVersion = "25.05";
  home.packages = [
  ];
  
  imports = [
    ./home/kits/conf/term/ghostty.nix
    ./home/kits/conf/browser/brave.nix
    ./home/kits/conf/discord/discord.nix
    ./home/kits/conf/shell/yazi.nix
    ./home/kits/conf/discord/signal-desktop.nix
    ./home/kits/conf/shell/neovim.nix
    ./home/kits/conf/shell/git.nix
    ./home/kits/conf/shell/bash.nix
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
