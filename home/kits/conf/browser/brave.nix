{pkgs, ...}: {
  home.packages = with pkgs; [
    brave
  ];

  # Optional: make Brave the default browser
  xdg.mimeApps.defaultApplications = {
    "text/html" = "brave-browser.desktop";
    "x-scheme-handler/http" = "brave-browser.desktop";
    "x-scheme-handler/https" = "brave-browser.desktop";
  };
}
