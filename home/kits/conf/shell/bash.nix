{
  config,
  pkgs,
  ...
}: {
  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
      ".." = "cd ..";
      c = "clear";
      q = "exit";
      stfu = "shutdown now";
      la = "ls -la";
      n = "nvim";
      rebuild = "sudo nixos-rebuild switch --flake .#kits";
    };

    bashrcExtra = ''
      export EDITOR=nvim
      export PATH="$HOME/.local/bin:$PATH"
      alias please='sudo'
    '';

    profileExtra = ''
      echo "Welcome back, $USER!"
    '';
  };
}
