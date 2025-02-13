{ pkgs }:

with pkgs; [
  # General packages for development and system management
  aspell
  aspellDicts.en
  bash-completion
  bat
  btop
  coreutils
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
  noto-fonts-emoji
  meslo-lgs-nf

  # Node.js development tools
  nodePackages.npm # globally install npm
  nodePackages.prettier
  nodejs

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

  # Python packages
  python312
  python312Packages.virtualenv # globally install virtualenv
  
  # Go
  go
  gopls

  # Rust
  cargo
  rustc
  rust-analyzer
  clippy
]
