"
# Yamaha-DX200 drums
# 
#####################
# <Song info here>
#
#
#
#
"

# create variable of folder holding samples
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Yamaha-DX200drumsSAMPLEpack/"
use_bpm 120

live_loop :drums do
  #sample :drum_heavy_kick
  sample samplenoids, "BD-dx200-909ishThumppppoKick", beat_stretch: 8, amp: 4 #, pitch: 2
  sleep 1
  #OLDER#sample :drum_snare_hard
  #OLD#sample samplenoids, "snare (3)"
  sample samplenoids, "SD-dx200-FishSnare"
  sleep 1
  #sample :drum_heavy_kick
  sample samplenoids, "BD-dx200-909ishThumppppoKick", beat_stretch: 8, amp: 4 #, pitch: 2
  sleep 1
  #OLDER#sample :drum_snare_hard
  #OLD#sample samplenoids, "snare (3)"
  sample samplenoids, "SD-dx200-FishSnare"
  sleep 1
end