{pkgs, ...}: {
  programs.git = {
    enable = true;

    userName = "amdkits";
    userEmail = "kits.amd@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      core.editor = "nvim";
      color.ui = true;
    };

    aliases = {
      co = "checkout";
      br = "branch";
      ci = "commit";
      st = "status";
    };
  };
}
