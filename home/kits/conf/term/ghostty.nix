{ config, lib, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;

    # Set theme using extraConfig
    extraConfig = ''
      color-palette = gruvbox-dark
    '';
  };
}
