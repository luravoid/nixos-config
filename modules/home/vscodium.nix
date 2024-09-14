{ pkgs, ... }: 
let 
  jonathanharty.gruvbox-material-icon-theme = pkgs.vscode-utils.buildVscodeMarketplaceExtension {
    mktplcRef = {
      name = "gruvbox-material-icon-theme";
      publisher = "JonathanHarty";
      version = "1.1.5";
      hash = "sha256-86UWUuWKT6adx4hw4OJw3cSZxWZKLH4uLTO+Ssg75gY=";
    };
  };
  # sainnhe.gruvbox-material = pkgs.vscode-utils.buildVscodeMarketplaceExtension {
  #   mktplcRef = {
  #     name = "gruvbox-material";
  #     publisher = "sainnhe";
  #     version = "6.5.2";
  #     hash = "sha256-D+SZEQQwjZeuyENOYBJGn8tqS3cJiWbEkmEqhNRY/i4=";
  #   };
  # };
in
{
  programs.vscode = {
    enable = true;
    # wczesniejsze ustawienie
    #package = pkgs.vscodium;
    # obecne
    package =
      (pkgs.vscodium.override
        {
          # https://wiki.archlinux.org/title/Wayland#Electron
          commandLineArgs = [
            "--ozone-platform-hint=auto"
            "--ozone-platform=wayland"
            # make it use GTK_IM_MODULE if it runs with Gtk4, so fcitx5 can work with it.
            # (only supported by chromium/chrome at this time, not electron)
            #"--gtk-version=4"
            # make it use text-input-v1, which works for kwin 5.27 and weston
            #"--enable-wayland-ime"

            # TODO: fix https://github.com/microsoft/vscode/issues/187436
            # still not works...
            #"--password-store=basic" # use gnome-keyring as password store
          ];
        });
    extensions = with pkgs.vscode-extensions; [
      # nix language
      bbenoist.nix
      # nix-shell suport 
      arrterian.nix-env-selector
      # python
      ms-python.python
      # C/C++
      ms-vscode.cpptools
      # OCaml
      ocamllabs.ocaml-platform

      # Color theme
      jdinhlife.gruvbox
      # sainnhe.gruvbox-material
      jonathanharty.gruvbox-material-icon-theme

      # nvim
      asvetliakov.vscode-neovim
    ];
    userSettings = {
      "update.mode" = "none";
      "extensions.autoUpdate" = false; # This stuff fixes vscode freaking out when theres an update
      "window.titleBarStyle" = "custom"; # needed otherwise vscode crashes, see https://github.com/NixOS/nixpkgs/issues/246509

      # needed for respecting caps:escape swap
      "keyboard.dispatch" = "keyCode";

      "window.menuBarVisibility" = "toggle";
      "editor.fontFamily" = "'FiraCode Nerd Font', 'SymbolsNerdFont', 'monospace', monospace";
      "terminal.integrated.fontFamily" = "'FiraCode Nerd Font', 'SymbolsNerdFont'";
      "editor.fontSize" = 16;
      "workbench.colorTheme" = "Gruvbox Dark Hard";
      "workbench.iconTheme" = "gruvbox-material-icon-theme";
      "material-icon-theme.folders.theme" = "classic";
      "vsicons.dontShowNewVersionMessage" = true;
      "explorer.confirmDragAndDrop" = false;
      "editor.fontLigatures" = true;
      "editor.minimap.enabled" = true;
      "workbench.startupEditor" = "none";

      "editor.formatOnSave" = true;
      "editor.formatOnType" = true;
      "editor.formatOnPaste" = true;

      "workbench.layoutControl.type" = "menu";
      "workbench.editor.limit.enabled" = true;
      "workbench.editor.limit.value" = 10;
      "workbench.editor.limit.perEditorGroup" = true;
      "workbench.editor.showTabs" = "multiple";
      #"files.autoSave" = "onWindowChange";
      "explorer.openEditors.visible" = 0;
      "breadcrumbs.enabled" = false;
      "editor.renderControlCharacters" = false;
      #"workbench.activityBar.location" = "hidden";
      "workbench.statusBar.visible" = false;
      "editor.scrollbar.verticalScrollbarSize" = 5;
      "editor.scrollbar.horizontalScrollbarSize" = 5;
      #"editor.scrollbar.vertical" = "hidden";
      #"editor.scrollbar.horizontal" = "hidden";
      "workbench.layoutControl.enabled" = false;

      "editor.mouseWheelZoom" = true;

      "C_Cpp.autocompleteAddParentheses" = true;
      "C_Cpp.formatting" = "clangFormat";
      "C_Cpp.vcFormat.newLine.closeBraceSameLine.emptyFunction" = true;
      "C_Cpp.vcFormat.newLine.closeBraceSameLine.emptyType" = true;
      "C_Cpp.vcFormat.space.beforeEmptySquareBrackets" = true;
      "C_Cpp.vcFormat.newLine.beforeOpenBrace.block" = "sameLine";
      "C_Cpp.vcFormat.newLine.beforeOpenBrace.function" = "sameLine";
      "C_Cpp.vcFormat.newLine.beforeElse" = false;
      "C_Cpp.vcFormat.newLine.beforeCatch" = false;
      "C_Cpp.vcFormat.newLine.beforeOpenBrace.type" = "sameLine";
      "C_Cpp.vcFormat.space.betweenEmptyBraces" = true;
      "C_Cpp.vcFormat.space.betweenEmptyLambdaBrackets" = true;
      "C_Cpp.vcFormat.indent.caseLabels" = true;
      "C_Cpp.intelliSenseCacheSize" = 2048;
      "C_Cpp.intelliSenseMemoryLimit" = 2048;
      "C_Cpp.default.browse.path" = [
        ''''${workspaceFolder}/**''
      ];
      "C_Cpp.default.cStandard" = "gnu11";
      "C_Cpp.inlayHints.parameterNames.hideLeadingUnderscores" = false;
      "C_Cpp.intelliSenseUpdateDelay" = 500;
      "C_Cpp.workspaceParsingPriority" = "medium";
      "C_Cpp.clang_format_sortIncludes" = true;
      "C_Cpp.doxygen.generatedStyle" = "/**";

      # needed for nvim
      "extensions.experimental.affinity" = {
        "asvetliakov.vscode-neovim" = 1;
      };
    };
    # Keybindings
    keybindings = [
      {
        key = "ctrl+q";
        command = "editor.action.commentLine";
        when = "editorTextFocus && !editorReadonly";
      }
      {
        key = "ctrl+s";
        command = "workbench.action.files.saveFiles";
      }
    ];
  };
}
