{pkgs, ...}: {
  programs.nvf.settings.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      yazi-nvim = {
        package = yazi-nvim;
        setup = "vim.keymap.set('n', '<leader>cy', function()
          require('yazi').yazi()
         end)";
        # https://github.com/mikavilpas/yazi.nvim/issues/340
        # "require('yazi').setup()";
      };
    };
  };
}
