{ config, pkgs, ... }:
let
    kitty = builtins.path { path = ./config/kitty; };
    lzvim = builtins.path { path = ./config/lzvim; };
    tmux = builtins.path { path = ./config/tmux; };
in
{
  ".config/kitty" = {
    source = kitty; 
    target = ".config/kitty";
    recursive = true;
  };

  ".config/lzvim" = {
    source = lzvim; 
    target = ".config/lzvim";
    recursive = true;
  };

  ".config/tmux" = {
    source = tmux; 
    target = ".config/tmux";
    recursive = true;
  };
}
