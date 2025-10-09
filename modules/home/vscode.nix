{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  programs.vscode = {
    enable = false;
    profiles = {
      default = {
        extensions = with pkgs.vscode-extensions; [
          bbenoist.nix
          jeff-hykin.better-nix-syntax
          ms-vscode.cpptools-extension-pack
          vscodevim.vim # Vim emulation
          mads-hartmann.bash-ide-vscode
          tamasfe.even-better-toml
          zainchen.json
          shd101wyy.markdown-preview-enhanced
          dracula-theme.theme-dracula
        ];
      };
      # settings = {
      #   "chat.editor.fontFamily" = "JetBrains Mono";
      #   "chat.editor.fontSize" = 20.0;
      #   "debug.console.fontFamily" = "JetBrains Mono";
      #   "debug.console.fontSize" = 20.0;
      #   "editor.fontFamily" = "JetBrains Mono";
      #   "editor.fontSize" = 20.0;
      #   "editor.inlayHints.fontFamily" = "JetBrains Mono";
      #   "editor.inlineSuggest.fontFamily" = "JetBrains Mono";
      #   "editor.minimap.sectionHeaderFontSize" = 12.857142857142858;
      #   "markdown.preview.fontFamily" = "Montserrat";
      #   "markdown.preview.fontSize" = 20.0;
      #   "scm.inputFontFamily" = "JetBrains Mono";
      #   "scm.inputFontSize" = 18.571428571428573;
      #   "screencastMode.fontSize" = 80.0;
      #   "terminal.integrated.fontSize" = 20.0;
      #   "workbench.colorTheme" = "Dracula Theme Soft";
      # };
    };
  };
}
