"
# why do fools fall in love?
# (why does rain fall from ^))
#####################
# <Song info here>
#
#
#
#
"

##use_bpm 175 ##
#############################################################################

#OLD#solenoids = "/Users/sam/Desktop/Samples/"
samplenoids = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/"
casio_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/CASIOMT70-Drumsamplezzz"
use_bpm 120

live_loop :samplenoid do
  with_fx :ixi_techno, mix: 0.5 do
    #with_fx :flanger, mix: 0.75 do
    #with_fx :gverb do
    
    sample samplenoids, "Why_Do_Fools_Fall_In_Love-Frankie_Lymon_The_Teenagers-1956_Sample1", amp: 6, rate: 1.25#, beat_stretch: 4, amp: 0.8 #, pitch: 2
    
    sleep 18
    #end
    #end
  end
end

