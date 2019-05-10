# Welcome to Sonic Pi v2.11.1

"
# the tears of a clown
# 
#####################
# <Song info here>
#
#
#
#
"

##use_bpm 75? ##
#############################################################################

#OLD#solenoids = "/Users/sam/Desktop/Samples/"
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/"
space_sounds = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/NASA/SpookySpaceSounds"
#kepler_star2.wav
use_bpm 145

live_loop :samplenoid do
  #with_fx :echo, mix: 0.3 do
  #with_fx :flanger, mix: 0.75 do
  #with_fx :gverb do
  
  sample samplenoids, "TearsOfAClownSample"#, beat_stretch: 8#, amp: 0.8#, start: 0, finish: 0.2
  #OLD#, rate: 1.25 #, pitch: 2
  sleep 10
  #end
  #end
  #end
end


