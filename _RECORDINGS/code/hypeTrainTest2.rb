# Welcome to Sonic Pi v2.11.1

#######################
## HypeTrain_Test01  ##
#######################

# Acid House with some boosting effects in the master bus
# Mehackit 2016

## <SAMPLES> ###############################################

casio = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/"
legowelt_juno = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_Juno_106_Samples/"
legowelt_dx = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_DX-FILES_SamplePack/"
smackos_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Smackos_DR660_Drumsamples/"
gameboy_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/BPB_Game_Boy_Drum_Kit/_GB_Drums/"

############################################################


#COMBINE KICK, SNARE, & HI-HAT
live_loop :beat1 do
  #sample :drum_cymbal_closed
  play sample smackos_drums, "DR660 808 Closed Hat 1"
  if tick.even?
    #sample :bd_haus
    sample smackos_drums, "DR660 Bassdrum fat", amp: 0.8
  else
    sample :sn_dolf
  end
  sleep 0.25
  #sample :drum_cymbal_closed
  play sample smackos_drums, "DR660 808 Closed Hat 2"
  sleep 0.25
end


loop do
  sync :beat1
  sleep 6
  if tick.even?
    
    #sample :sn_dolf
    sample smackos_drums, "DR660 Bassdrum Dance", amp: 1.5
    sleep 0.25
    #sample :sn_dolf
    sample smackos_drums, "DR660 Bassdrum Dance", amp: 1.5
    sleep 0.5
    sample :sn_dolf
    ##sample smackos_drums, "DR660 Bassdrum Dance", amp: 1.5
    sleep 0.25
    #OLD#sample :sn_dolf
  else
    #sample :sn_dolf
    sample smackos_drums, "DR660 Bassdrum fat", amp: 1.5
    sleep 0.25
    #sample :sn_dolf
    sample smackos_drums, "DR660 Bassdrum fat", amp: 1.5
    sleep 0.5
    ##sample :sn_dub
    sample smackos_drums, "DR660 808 Clap", amp: 1.5
    ##sample smackos_drums, "DR660 Bassdrum fat", amp: 1.5
    sleep 0.25
    #OLD#sample :sn_dolf
    sample smackos_drums, "DR660 808 Clap", amp: 2
  end
end


########################################################

"
# play 4 random notes
4.times do
  play rrand_i(60, 90)
  sleep 0.5
end
"