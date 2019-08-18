# Welcome to Sonic Pi v3.1

crap_sample = "C:/Users/BabyPoopSoup/Documents/MEGAsync Downloads/PZYCHEDERIC/jam_sandwich_vol_1/Full Beat Loops/"

################

set_volume! 1.5

use_bpm 120

live_loop :test do
  with_fx :compressor, mix: 0.6 do
    sample crap_sample, "JSV1_Cru_Crnrbeatloop_Carro_170.wav", amp: 1, beat_stretch: 20
    sleep 10
  end
end