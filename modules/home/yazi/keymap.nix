{
  pkgs,
  config,
  ...
}: {
  programs.yazi.keymap = {
    manager.prepend_keymap = [
      {
        on = ["<C-s>"];
        run = "shell --confirm 'sig -o'";
        desc = "Preview all images in the current directory";
      }
    ];
  };
}
