{ pkgs }:

with pkgs; [
  # General packages for development and system management
  aspell
  aspellDicts.en
  bash-completion
  bat
  btop
  coreutils
  devenv
  direnv
  killall
  lazygit
  neofetch
  openssh
  sqlite
  stow
  wget
  zip

  # Encryption and security tools
  age
  age-plugin-yubikey
  gnupg
  libfido2

  # Cloud-related tools and SDKs
  docker
  docker-compose

  # Media-related packages
  dejavu_fonts
  ffmpeg
  fd
  font-awesome
  hack-font
  noto-fonts
  noto-fonts-color-emoji
  meslo-lgs-nf

  # Node.js development tools
  nodePackages.npm # globally install npm

  # Text and terminal utilities
  fzf
  htop
  hunspell
  iftop
  jetbrains-mono
  jq
  neovim
  ripgrep
  starship
  tree
  tmux
  unrar
  unzip
  vimPlugins.LazyVim
  zsh-powerlevel10k
  sesh
  gum
  zoxide
  vivid
  eza

  # Python packages
  python312
  python312Packages.virtualenv
  python312Packages.pip
  
  # Go
  go
  gopls

  # Rust
  rustup

  # Protobuf
  buf


]
