"
# mr trolololo
# 
#####################
# <Song info here>
#
#
#
#
"

##use_bpm ?50? ##
#############################################################################

#OLD#solenoids = "/Users/sam/Desktop/Samples/"
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/"
use_bpm 15

live_loop :samplenoid do
  with_fx :echo, mix: 0.2 do
    
    sample samplenoids, "Mr.Trololo_sample", beat_stretch: 8, amp: 0.8 #, pitch: 2
    sleep 8
  end
end
