"
use_bpm 105
# mmmbop
# G, D, C
#################
live_loop :mmmbop do
  use_synth :piano
  play :G2
  sleep 1
  play :D2
  sleep 1
  play :C2
  sleep 1
end
"

##use_bpm 137##
#############################################################################

#USE#sample "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Ozzy_Osbourne-Crazy_Train_Sample.wav", amp: 1.5
#sample "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/loop_1.wav", amp: 1.5


#solenoids = "/Users/sam/Desktop/Samples/"
solenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Hanson-Mmmbop_Sample.wav"
use_bpm 100

live_loop :solenoid1 do
  #with_fx :krush do
  
  sample solenoids, "Hanson-Mmmbop_Sample", beat_stretch: 4, amp: 2 #, pitch: 2
  sleep 4
  #end
end

