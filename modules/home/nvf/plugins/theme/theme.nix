{pkgs, ...}: {
  programs.nvf.settings.vim = {
    theme = {
      enable = false;
      name = "gruvbox";
      style = "dark";
      transparent = true;
    };
    extraPlugins = with pkgs.vimPlugins; {
      gruvbox-material-nvim = {
        package = gruvbox-material-nvim;
        setup = "vim.cmd.colorscheme 'gruvbox-material'";
      };
    };
  };
}
