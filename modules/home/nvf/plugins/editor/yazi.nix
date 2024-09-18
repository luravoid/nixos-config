{pkgs, ...}: {
  programs.nvf.settings.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      yazi-nvim = {
        package = yazi-nvim;
      };
    };
  };
}
