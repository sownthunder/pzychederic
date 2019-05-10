# Welcome to Sonic Pi v2.11.1

#######################
## HypeTrain_Test01  ##
#######################

# Acid House with some boosting effects in the master bus
# Mehackit 2016

## <SAMPLES> ###############################################

legowelt_juno = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_Juno_106_Samples/"
legowelt_dx = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_DX-FILES_SamplePack/"
smackos_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Smackos_DR660_Drumsamples/"
gameboy_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/BPB_Game_Boy_Drum_Kit/_GB_Drums/"

############################################################


#COMBINE KICK, SNARE, & HI-HAT
live_loop :beat1 do
  sample :drum_cymbal_closed
  #play sample, ""
  if tick.even?
    sample :bd_haus
  else
    sample :sn_dolf
  end
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
end


########################################################

"
# play 4 random notes
4.times do
  play rrand_i(60, 90)
  sleep 0.5
end
"