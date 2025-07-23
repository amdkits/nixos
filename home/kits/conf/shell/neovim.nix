{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      vim-nix
      nerdtree
      telescope-nvim
      nvim-treesitter
    ];

    extraLuaConfig = ''
      vim.o.number = true
      vim.o.relativenumber = true
      vim.cmd("colorscheme murphy")
    '';
  };
}
