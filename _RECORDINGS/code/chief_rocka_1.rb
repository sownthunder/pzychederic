# Welcome to Sonic Pi v3.1

crap_sample = "C:/Users/BabyPoopSoup/Documents/MEGAsync Downloads/PZYCHEDERIC/jam_sandwich_vol_1/Full Beat Loops/"

################

set_volume! 0.25

use_bpm 100

live_loop :test do
  with_fx :ixi_techno, mix: 0.6 do
    sample crap_sample, "JSV1_Cru_Crnrbeatloop_Carro_170.wav", amp: 1, beat_stretch: 20
    sleep 16
  end
end