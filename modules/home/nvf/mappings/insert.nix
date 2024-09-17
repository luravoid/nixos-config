{
  programs.nvf.settings.vim.maps.insert = {
    # Move Lines
    "<A-j>" = {
      desc = "Move Down";
      action = "<esc><cmd>m .+1<cr>==gi";
    };
    "<A-k>" = {
      desc = "Move Up";
      action = "<esc><cmd>m .-2<cr>==gi";
    };
  };
}
