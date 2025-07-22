{ config, pkgs, ... }:

{
  # You can define game-related apps here that Home Manager supports
  home.packages = with pkgs; [
    # Add optional tools/games here
  ];
}
