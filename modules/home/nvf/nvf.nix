{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./plugins
  ];

  programs.nvf = {
    enable = true;
    settings = {
      vim.viAlias = true;
    };
  };
}
