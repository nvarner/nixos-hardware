{ ... }:

{
  imports = [
    ../.
    ../../../../../common/cpu/amd/pstate.nix
    ../../../../../common/wifi/mediatek/mt7925
    ../../../../../common/wifi/mediatek/mt7925/iwd.nix
  ];

  # Prevent the integrated RGB camera from dying during suspend.
  # This issue was observed on Linux 6.18.38.
  boot.kernelParams = [ "usbcore.quirks=30c9:00f4:b" ];
}
