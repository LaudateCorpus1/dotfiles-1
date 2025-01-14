{ config, pkgs, ... }:

{
  imports = [
    ./git
    ./neovim.nix
    ./shell.nix
    ];

  home.packages = with pkgs; [
    # CLIs
    ncdu
    bat # fancy version of `cat`
    cargo-edit # project package management with cargo
    fd # fancy version of `find`
    exa # fancy version of `ls`
    htop # fancy version of `top`
    hyperfine # benchmarking tools
    mosh # fancy version of `ssh`
    procs # fancy version of `ps`
    ripgrep # fancy version of `grep`
    tealdeer # rust implementation of `tldr`
    hexyl # hex viewer

    # Languages
    nodejs yarn
    rustup
    go

    # Nix-related
    home-manager # system package manager

  ] ++ lib.optionals stdenv.isDarwin [
    m-cli # useful macos CLI commands
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.09";
}
