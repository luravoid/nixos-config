{
  programs.nvf.settings.vim = {
    session.nvim-session-manager = {
      enable = true;
    };
    # Huge delay if using nvim-session-manager.mappings.loadSession
    maps.normal = {
      "<leader>sm" = {
        desc = "Load session";
        action = "<cmd>SessionManager load_session<cr>";
      };
    };
  };
}
