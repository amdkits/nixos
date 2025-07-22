{ pkgs, ... }:

{
  home.packages = [
    pkgs.ghostty
  ];

  settings = {
      # Set gruvbox-dark as the theme
      color-palette = "gruvbox-dark";
    };

}

