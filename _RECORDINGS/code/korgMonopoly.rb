"
# KORG_MONOPOLY
# with KORGER1Samples
#####################
# <Song info here>
#
#
#
#
"

# create variable of folder holding samples
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/KORG_MONOPOLY/"
samplenoids_roland = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/KORGER1Samples/"
use_bpm 120

live_loop :drums do
  #sample :drum_heavy_kick
  #sample samplenoids_roland, "CLPZ-ER1-ClapHaze", beat_stretch: 8, amp: 4 #, pitch: 2
  sleep 1
  #OLDER#sample :drum_snare_hard
  #OLD#sample samplenoids, "snare (3)"
  sample samplenoids_roland, "SD-ER1-70sSnareNice", beat_stretch: 4
  sleep 1
  #sample :drum_heavy_kick
  sample samplenoids_roland, "SYNTH-StonedRacoon", beat_stretch: 8, amp: 4 #, pitch: 2
  sleep 1
  #OLDER#sample :drum_snare_hard
  #OLD#sample samplenoids, "snare (3)"
  sample samplenoids_roland, "SD-ER1-70sSnareNice"
  sleep 1
end


live_loop :hihat do
  #sample :drum_cymbal_closed
  #sample samplenoids_roland, "CLPZ-ER1-ClapHaze", amp: 0.25
  sample samplenoids_roland, "HH-ER1-TunaMelt", amp: 0.25
  sleep 0.25
  #sample :drum_cymbal_pedal
  sample samplenoids_roland, "HH-ER1-TunaMelt2", amp: 0.5
  sleep 1
end


live_loop :bass do
  #OLDER#play (chord :C2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  #OLD#sample samplenoids, "ARP-RowingBeat", release: 0.125, amp: 4
  #sample samplenoids_roland, "BD-ER1-90sTrance2longdecay" #, beat_stretch: 8
  sample samplenoids, "BASS-WarmBoat", release: 0.125, amp: 2
  sleep 0.25
  #sleep 8
end


