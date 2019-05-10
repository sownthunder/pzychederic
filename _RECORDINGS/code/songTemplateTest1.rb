# Welcome to Sonic Pi v2.11.1

#######################
## HypeTrain_Test01  ##
#######################

# Acid House with some boosting effects in the master bus
# Mehackit 2016

## <SAMPLES> ##########################################################################################################
#######################################################################################################################
## CASIO                                                                                                             ##
casio = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/CASIOMT70-Drumsamplezzz/" ##
#######################################################################################################################
## Bass: [1] "CasioMT70-Bassdrum"
## Beats: [1] "Beat+Fill-DISCO", [2] "Beat+Fill-ROCK1", [3] "Beat+Fill-ROCK2"
## Chord/Pad: N/A
## Cymbal: N/A
## Drums: [1] "CasioMT70-Snaredrum"
## FX: N/A
## Hi-hat: [1] "CasioMT70-OpenHihat", [2] "CasioMT70-OpenHihat2", [3] "CasioMT70-ClosedHihat", [4] "CasioMT70-Hat+Clave"
## Pad: N/A
## Perc: N/A
## Snare: [1] "CasioMT70-Snare+Clave"
###########################################################################################################################
## LEGOWELT-EMU                                                                                                          ##
legowelt_emu = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_EMU_Samples/" ##
###########################################################################################################################
## Bass: [1] "BASS-Viezebass", [2] "BASS-SexyRezzzzzBass",
## Chord/Pad:
## Cymbal:
## Drums: [1] "DRUMS-DesertBD"
## FX: [1] "FX-FarmAlarm"
## Hi-hat: [1] ""
## Pad: [1] "PAD-Miami"
## Perc: [1] ""
## Snare: [1] ""
#################################################################################################################################
## LEGOTWELT-JUNO                                                                                                              ##
legowelt_juno = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_Juno_106_Samples/" ##
#################################################################################################################################
## Bass:
## Chord/Pad:
## Cymbal:
## Drums:
## FX:
## Hi-hat:
## Pad
## Perc:
## Snare:
##################################################################################################################################
## LEGOTWELT-DX                                                                                                                 ##
legowelt_dx = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_DX-FILES_SamplePack/" ##
##################################################################################################################################
## Bass:
## Chord/Pad:
## Cymbal:
## Drums:
## FX:
## Hi-hat:
## Pad
## Perc:
## Snare:
#################################################################################################################################
## SMACKOS DRUMSZ                                                                                                              ##
smackos_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Smackos_DR660_Drumsamples/" ##
#################################################################################################################################
## Bass:
## Chord/Pad:
## Cymbal:
## Bass: [1] "DR660 Bassdrum Block", [2] "DR660 808 Conga High", [3] "DR660 808 Conga Low", [4] "DR660 808 Conga Mid"
## Bass: [5] "DR660 Bassdrum fat", [6] "DR660 Slapbass"
## Chord/Pad:
## Cymbal:
## Drums:
## FX:
## Hi-hat:
## Pad:
## Perc: [1] "DR660 Perc"
## Snare:
#######################################################################################################################################
## GAMEBOY DRUMZ                                                                                                                     ##
gameboy_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/BPB_Game_Boy_Drum_Kit/_GB_Drums/" ##
#######################################################################################################################################
## Bass:
## Chord/Pad:
## Cymbal:
## Drums:
## FX:
## Hi-hat:
## Pad
## Perc:
## Snare:
#############################################################################################################################
## MINI-MOOG                                                                                                               ##
mini_moog = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_MINIMOOG_Samples/" ##
#############################################################################################################################
## Bass:
## Chord/Pad: [1] "CHORDPAD-DuneValley-RumbleMud"
## Cymbal:
## Drums:
## FX:
## Hi-hat:
## Pad
## Perc:
## Snare:
########################################################################################################################################
## YAMAHA DX200 DRUMZ                                                                                                                 ##
yamaha-dx200_drums = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Yamaha-DX200drumsSAMPLEpack/" ##
" ** IMPORTANT BELOW ** "                                                                                                             ##
########################################################################################################################################
## Bass: **** [1] "BD-dx200-SubBooooom", **** [2] "BD-dx200-HumanBeatBoxBoom", [3] "BD-dx200-HumanBeatBoxPuow"
## Chord/Pad:
## Cymbal:
## Drums:
## FX:
## Hi-hat:
## Pad:
## Perc: [1] "PERC-dx200-Indianstyle1-6"
## Snare:
############################################################################################################################
## YAMAHA PSS380                                                                                                          ##
yamaha-pss380 = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/amaha-PSS380samplezzz" ##
############################################################################################################################
## Bass:
## Chord/Pad:
## Cymbal:
## Drums:
## FX:
## Hi-hat: [1] "open hihat Yamaha PSS380"
## Pad:
## Perc:
## Snare:
############################################################
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