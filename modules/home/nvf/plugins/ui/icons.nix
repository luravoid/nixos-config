{pkgs, ...}: {
  programs.nvf.settings.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      nvim-web-devicons = {
        package = nvim-web-devicons;
      };
    };
  };
}
