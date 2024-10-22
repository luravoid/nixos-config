{ pkgs, ... }: 
{
  home.packages = with pkgs; [ rofi-wayland ];

  # Zapisanie config.rasi w katalogu ~/.config/rofi/
  xdg.configFile."rofi/config.rasi".text = ''
    configuration {
      show-icons:         true;
      icon-theme:         "Zafiro";
      terminal:           "alacritty";
      cycle:              false;
      hide-scrollbar:     true;
      disable-history:    false;
      kb-row-up: "Up,Control+k,Shift+Tab,Shift+ISO_Left_Tab";
      kb-row-down: "Down,Control+j";
      kb-row-left: "Control+h";
      kb-row-right: "Control+l";
      kb-accept-entry: "Control+m,Return,KP_Enter";
      kb-remove-to-eol: "Control+Shift+e";
      kb-mode-next: "Shift+Right,Control+Tab";
      kb-mode-previous: "Shift+Left,Control+Shift+Tab";
      kb-remove-char-back: "BackSpace";
      kb-mode-complete: "Control+t";
    }
  '';

  # Kopiowanie wszystkich plików .rasi z katalogu themes do ~/.config/rofi/themes/
  xdg.configFile."rofi/themes" = {
    source = ./themes;
    recursive = true;  # Kopiowanie rekurencyjne wszystkich plików z themes/
  };
}