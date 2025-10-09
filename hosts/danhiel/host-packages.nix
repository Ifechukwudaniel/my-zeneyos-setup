{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    audacity
    discord
    nodejs
    firefox
    vscode
    telegram-desktop
    docker
    spotify
    yarn
    pnpm
  ];
}
