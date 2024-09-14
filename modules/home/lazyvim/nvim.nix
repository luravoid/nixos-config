{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}
