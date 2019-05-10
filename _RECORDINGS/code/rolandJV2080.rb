"
# Roland-JV-2080
# 
#####################
# <Song info here>
#
#
#
#
"

# create variable of folder holding samples
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_RolandJD800_SampleKit/"
use_bpm 120

live_loop :bass do
  #OLD#use_synth :tb303
  #OLD#play (chord :C2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  sample samplenoids, "BASS-CarpenterBass", release: 0.125, amp: 4
  sleep 0.25
end