{
  programs.nvf.settings.vim = {
    utility = {
      #images.image-nvim.enable = true;
      #preview.markdownPreview.enable = true;
    };

    notes.todo-comments = {
      enable = true;
      mappings = {
        telescope = "<leader>st";
      };
    };

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };
  };
}
