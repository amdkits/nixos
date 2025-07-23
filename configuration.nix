{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  boot = {
    loader = {
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };

  networking = {
    hostname = "amdkits";
    networkmanager = {
      enable = true;
    };
  };

  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimize-store = true;
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  time = {timeZone = "Asia/Kolkata";};

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = ["en_US.UTF-8/UTF-8"];
    extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  fonts.packages = with pkgs; [
    font-awesome
    material-design-icons
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
    dejavu_fonts
    liberation_ttf
    bibata-cursors
  ];

  services = {
    xserver = {
      enable = true;

      displayManager = {
        gdm = {
          enable = true;
        };
      };

      desktopManager = {
        gnome = {
          enable = true;
        };
      };

      xkb = {
        layout = "us";
        variant = "";
      };

      # Enable touchpad support (enabled default in most desktopManager).
      libinput = {
        enable = true;
      };
    };

    xserver = {
    };

    printing = {
      enable = true;
    };

    pulseaudio = {
      enable = true;
    };

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    openssh = {
      enable = true;
    };
  };

  security = {
    rtkit = {
      enable = true;
    };
  };

  users.users.kits = {
    isNormalUser = true;
    description = "parashurama";
    extraGroups = ["networkmanager" "wheel"];
    # packages = with pkgs; [];
  };

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    gh
    neofetch
    htop
    curl
    tree
    gcc
    gnumake
    # for doom-emacs
    emacs30
    fd
    ripgrep
    gnugrep
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
  };

  system.stateVersion = "25.05";
}
