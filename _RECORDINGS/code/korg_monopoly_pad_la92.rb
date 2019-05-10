"
# KORG_MONOPOLY
# 
#####################
# 
#
#
#
#
"

# create variable of folder holding samples
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/KORG_MONOPOLY/"
use_bpm 100

#sample samplenoids, "PAD-LosAngeles92"

live_loop :bass do
  #OLD#use_synth :tb303
  #OLD#play (chord :C2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  #sample samplenoids, "CHORD-FisherOpener", release: 0.125, amp: 4
  sample samplenoids, "PAD-LosAngeles92", beat_stretch: 20, amp: 0.8 #, pitch: 2
  #sleep 0.25
  sleep 20
end