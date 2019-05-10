"
# i be so glad
# (when the sun goes down)
#####################
# <Song info here>
#
#
#
#
"

##use_bpm 25 ##
#############################################################################

#OLD#solenoids = "/Users/sam/Desktop/Samples/"
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/"
use_bpm 25

live_loop :samplenoid do
  with_fx :echo, mix: 0.3 do
    #with_fx :flanger, mix: 0.75 do
    with_fx :gverb do
      
      sample samplenoids, "I_Be_So_Glad_When_The_Sun_Goes_Down_Sample", beat_stretch: 8, amp: 0.8 #, pitch: 2
      sleep 8
    end
    #end
  end
end

