{pkgs, ...}: {
  programs.nvf.settings.vim = {
    dashboard.dashboard-nvim = {
      enable = true;
    };
    extraPlugins = with pkgs.vimPlugins; {
      nvim-web-devicons = {
        package = nvim-web-devicons;
      };
    };
  };
}
