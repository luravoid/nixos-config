{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./plugins
    ./mappings
  ];

  programs.nvf = {
    enable = true;
    settings = {
      vim.viAlias = true;
      vim.leaderKey = " ";
    };
  };
}
