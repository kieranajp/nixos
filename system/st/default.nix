{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (st.overrideAttrs (oldAttrs: rec {
      configFile = writeText "config.def.h" (builtins.readFile ./config.h);
      postPatch = "${oldAttrs.postPatch}\n cp ${configFile} config.def.h";
      patches = [
        (fetchpatch {
          url = "https://st.suckless.org/patches/scrollback/st-scrollback-0.9.2.diff";
          sha256 = "ZypvRONAHS//wnZjivmqpWIqZlKTqAQ0Q8DhQpZVaqU=";
        })
        (fetchpatch {
          url = "https://st.suckless.org/patches/scrollback/st-scrollback-reflow-0.9.2.diff";
          sha256 = "+y778AqU2gpSi1so5SwtOZr0rc2qsyVUWWdzAlNedt0=";
        })
        (fetchpatch {
          url = "https://st.suckless.org/patches/scrollback/st-scrollback-mouse-0.9.2.diff";
          sha256 = "CuNJ5FdKmAtEjwbgKeBKPJTdEfJvIdmeSAphbz0u3Uk=";
        })
        (fetchpatch {
          url = "https://st.suckless.org/patches/scrollback/st-scrollback-mouse-altscreen-20220127-2c5edf2.diff";
          sha256 = "8oVLgbsYCfMhNEOGadb5DFajdDKPxwgf3P/4vOXfUFo=";
        })
      ];
    }))
  ];
}
