"
# when i come around
# 
#####################
# <Song info here>
#
#
#
#
"

##use_bpm 98 ##
#############################################################################

#OLD#solenoids = "/Users/sam/Desktop/Samples/"
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/"
use_bpm 98

live_loop :samplenoid do
  with_fx :echo, mix: 0.2 do
    
    sample solenoids, "Green_Day-When_I_Come_Around", beat_stretch: 8, amp: 0.8 #, pitch: 2
    sleep 8
  end
end
