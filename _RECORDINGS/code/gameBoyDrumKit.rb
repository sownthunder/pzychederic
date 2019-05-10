"
# GameBoy DrumKit
# 
#####################
# <Song info here>
#
#
#
#
"

# create variable of folder holding samples 
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/BPB_Game_Boy_Drum_Kit/_GB_Drums/"
use_bpm 120

live_loop :drums do
  #sample :drum_heavy_kick
  sample samplenoids, "kick (11)", beat_stretch: 8, amp: 4 #, pitch: 2
  sleep 1
  #sample :drum_snare_hard
  sample samplenoids, "snare (3)"
  sleep 1
  #sample :drum_heavy_kick
  sample samplenoids, "kick (11)", beat_stretch: 8, amp: 4 #, pitch: 2
  sleep 1
  #sample :drum_snare_hard
  sample samplenoids, "snare (3)"
  sleep 1
end