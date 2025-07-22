{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "amdkits"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  hardware.opengl = {
  enable = true;
  driSupport32Bit = true;
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

  services.xserver.enable = true;

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  users.users.kits = {
    isNormalUser = true;
    description = "parashurama";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
   vim 
   wget
   git
   neofetch
   htop
  ];

  services.openssh.enable = true;

  system.stateVersion = "25.05"; 

programs.steam.enable = true;
}
