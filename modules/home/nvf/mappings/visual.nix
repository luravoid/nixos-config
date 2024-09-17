{
  programs.nvf.settings.vim.maps.visual = {
    # Move Lines
    "<A-j>" = {
      desc = "Move Down";
      action = ":m '>+1<cr>gv=gv";
    };
    "<A-k>" = {
      desc = "Move Up";
      action = ":m '<-2<cr>gv=gv";
    };
  };
}
