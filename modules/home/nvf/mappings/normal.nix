{
  programs.nvf.settings.vim.maps.normal = {
    # better up/down
    "j" = {
      desc = "Down";
      action = "v:count == 0 ? 'gj' : 'j'";
      expr = true;
      silent = true;
    };
    "<Down>" = {
      desc = "Down";
      action = "v:count == 0 ? 'gj' : 'j'";
      expr = true;
      silent = true;
    };
    "k" = {
      desc = "Up";
      action = "v:count == 0 ? 'gk' : 'k'";
      expr = true;
      silent = true;
    };
    "<Up>" = {
      desc = "Up";
      action = "v:count == 0 ? 'gk' : 'k'";
      expr = true;
      silent = true;
    };

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

    # Move Lines
    "<A-j>" = {
      desc = "Move Down";
      action = "<cmd>m .+1<cr>==";
    };
    "<A-k>" = {
      desc = "Move Up";
      action = "<cmd>m .-2<cr>==";
    };

    # buffers
    "<S-h>" = {
      desc = "Prev Buffer";
      action = "<cmd>bprevious<cr>";
    };
    "<S-l>" = {
      desc = "Next Buffer";
      action = "<cmd>bnext<cr>";
    };
    "[b" = {
      desc = "Prev Buffer";
      action = "<cmd>bprevious<cr>";
    };
    "]b" = {
      desc = "Next Buffer";
      action = "<cmd>bnext<cr>";
    };
    "<leader>bb" = {
      desc = "Switch to Other Buffer";
      action = "<cmd>e #<cr>";
    };
    "<leader>`" = {
      desc = "Switch to Other Buffer";
      action = "<cmd>e #<cr>";
    };
    #"<leader>bd" = {
    #  desc = "Delete Buffer";
    #  action = LazyVim.ui.bufremove;
    #};
    "<leader>bD" = {
      desc = "Delete Buffer and Window";
      action = "<cmd>:bd<cr>";
    };
  };
}
