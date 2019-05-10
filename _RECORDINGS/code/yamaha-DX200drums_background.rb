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

live_loop :bass do
  #OLD#use_synth :tb303
  #OLD#play (chord :C2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  sample samplenoids, "BASS-dx200-RealBassG", release: 0.125, amp: 4
  sleep 0.25
end