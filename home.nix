{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";


  programs.zsh = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      ls = "ls -G";
      ll = "ls -la";
      gator = "ssh -p 781 cvillalobos@if-abe-gator.ad.ufl.edu";
      winch = "ssh -p 781 cvillalobos@if-abe-winch.ad.ufl.edu";
      energy = "ssh -p 781 cvillalobos@if-abe-energy.ad.ufl.edu";
      elnino = "ssh cvillalobos@if-abe-elnino.ad.ufl.edu";
      cultivar = "ssh cvillalobos@cultivar.agmip.org";
      hiper = "ssh cvillalobos@hpg.rc.ufl.edu";
    };
    envExtra = ''
export PATH=$PATH:~/Development/External/flutter/1.22.6-stable/flutter/bin
eval "$(direnv hook zsh)"
'';
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ls = "ls --color=auto";
    };
  };

  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        family = "iosevka";
        size = 13.0;
      };
    };
  };

  programs.git = {
    enable = true;
    userName = "Christopher Villalobos";
    userEmail = "christopher.villalobos@gmail.com";
  };
}


