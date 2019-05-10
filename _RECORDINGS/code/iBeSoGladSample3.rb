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
beat_fill_rock2 = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/CASIOMT70-Drumsamplezzz/"
samplenoids_casio = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/CASIOMT70-Drumsamplezzz/"
use_bpm 25

live_loop :samplenoid do
  with_fx :echo, mix: 0.3 do
    #with_fx :flanger, mix: 0.75 do
    #with_fx :gverb do
    
    sample samplenoids, "I_Be_So_Glad_When_The_Sun_Goes_Down_Sample", beat_stretch: 8, amp: 0.8 #, rate: 1.25 #, pitch: 2
    sleep 10
    #end
    #end
  end
end


live_loop :melody do
  sync :samplenoid
  with_fx :ixi_techno do
    
    sample samplenoids_casio, "Beat+Fill-ROCK2", amp: 2, beat_stretch: 8, rate: 0.75
    sleep 2
  end
end


