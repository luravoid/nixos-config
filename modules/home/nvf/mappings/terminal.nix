{
  programs.nvf.settings.vim.maps.terminal = {
    # Move to window using the <ctrl> hjkl keys
    "<C-h>" = {
      desc = "Go to Left Window";
      action = "<C-w>h";
    };
    "<C-j>" = {
      desc = "Go to Lower Window";
      action = "<C-w>j";
    };
    "<C-k>" = {
      desc = "Go to Upper Window";
      action = "<C-w>k";
    };
    "<C-l>" = {
      desc = "Go to Right Window";
      action = "<C-w>l";
    };

    # Resize window using <ctrl> arrow keys
    "<C-Up>" = {
      desc = "Increase Window Height";
      action = "<cmd>resize +2<cr>";
    };
    "<C-Down>" = {
      desc = "Decrease Window Height";
      action = "<cmd>resize -2<cr>";
    };
    "<C-Left>" = {
      desc = "Decrease Window Width";
      action = "<cmd>vertical resize -2<cr>";
    };
    "<C-Right>" = {
      desc = "Increase Window Width";
      action = "<cmd>vertical resize +2<cr>";
    };
  };
}
