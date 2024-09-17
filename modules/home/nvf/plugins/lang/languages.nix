{
  programs.nvf.settings.vim = {
    languages = {
      enableExtraDiagnostics = true;
      enableFormat = true;
      enableLSP = true;
      enableTreesitter = true;

      bash.enable = true;
      lua.enable = true;
      nix.enable = true;
      python.enable = true;
      rust = {
        enable = true;
        crates.enable = true;
      };
      markdown.enable = true;
    };
  };
}