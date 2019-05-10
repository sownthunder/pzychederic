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
  sample samplenoids, "SD-dx200-FXSnare", beat_stretch: 4
  sleep 1
  #sample :drum_heavy_kick
  sample samplenoids, "BD-dx200-909ishThumppppoKick", beat_stretch: 8, amp: 4 #, pitch: 2
  sleep 1
  #OLDER#sample :drum_snare_hard
  #OLD#sample samplenoids, "snare (3)"
  sample samplenoids, "SD-dx200-FXSnare"
  sleep 1
end

live_loop :hihat do
  #sample :drum_cymbal_closed
  sample samplenoids, "HAT-dx200-909HatClosed", amp: 0.25
  sleep 0.25
  #sample :drum_cymbal_pedal
  sample samplenoids, "HAT-dx200-909HatOPEN", amp: 0.5
  sleep 1
end


live_loop :bass do
  #OLD#use_synth :tb303
  #OLD#play (chord :C2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  #sample samplenoids, "BASS-dx200-RaveBassG", release: 0.125, amp: 0.4
  sleep 0.25
end
