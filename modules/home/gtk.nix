{
  pkgs,
  config,
  ...
}: let
  monolisa = pkgs.callPackage ../../pkgs/monolisa/monolisa.nix {};
  monolisa-nerd = pkgs.callPackage ../../pkgs/monolisa/monolisa-nerd.nix {inherit monolisa;};
  gruvbox-material-gtk = pkgs.callPackage ../../pkgs/gruvbox-material-gtk.nix {};
in {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    (nerdfonts.override {fonts = ["JetBrainsMono" "FiraCode" "NerdFontsSymbolsOnly"];})
    twemoji-color-font
    noto-fonts-emoji
    # monolisa
    # monolisa-nerd
    terminus_font
    terminus_font_ttf
    terminus-nerdfont
    font-awesome
  ];

  gtk = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font";
      size = 12;
    };
    theme = {
      name = "Gruvbox-Material-Dark";
      package = gruvbox-material-gtk;
    };
    iconTheme = {
      name = "Gruvbox-Material-Dark";
      package = gruvbox-material-gtk;
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
  };
}
