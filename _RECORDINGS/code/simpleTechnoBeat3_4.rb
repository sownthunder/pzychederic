# Welcome to Sonic Pi v2.11.1

######################
## ** TECHNO???? ** ##
######################

## <SAMPLES> ###############################################

korger1_samples = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/KORGER1SAMPLES/"
casio_samplezzz = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/CASIOMT70-Drumsamplezzz/"
gameboy_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/BPB_Game_Boy_Drum_Kit/_GB_Drums/"

############################################################

# Simple Slow Techno
# Mehackit 2016

use_bpm 80

live_loop :kickdrum do
  sample :bd_haus, amp: 1
  #MAYB#sample gameboy_drums, "kick_5", amp: 1
  sample casio_samplezzz, "CasioMT70-Bassdrum", amp: 1
  sleep 1
end

live_loop :hihat do
  #OLD#sample :drum_cymbal_soft, amp: 0.4
  #MAYB#sample gameboy_drums, "hihat_8", amp: 0.4
  sample casio_samplezzz, "CasioMT70-ClosedHihat", amp: 0.4
  #sample korger1_samples, "HH-ER1-BassieHat", amp: 0.4
  sleep 0.5
end

live_loop :snare do
  sleep 1
  #sample :drum_snare_soft, amp: 1.3
  #rrand(60, 110)
  #if one_in(6)
  # CLPZ-ER1-ClapHiFive
  # FX-ER1-Robobreak
  # FX-ER1-WoodzbloxDropletz
  # FX-ER-Pwiiiiup
  sample korger1_samples, "CLPZ-ER1-ClapHiFive", amp: 10.5 #, amp: 1.3
  sleep 1
  #else
  #sample casio_samplezzz, "CasioMT70-Snaredrum", amp: 1.3
  #end
end

"
use_random_seed 0
3.times do
  use_synth :tb303
  play rrand_i(50, 95)
  sleep 0.125
end
"


live_loop :pulputus do
  with_fx :reverb, amp: 1, mix: 0.25 do
    #use_synth :tb303
    #OLD#use_synth :piano
    use_synth :hoover
    nuotti = (chord :C2, :minor).choose
    play nuotti, cutoff: rrand(10, 130), release: 0.1, amp: 0.8, release: 0.1
    sleep 0.25
  end
end
