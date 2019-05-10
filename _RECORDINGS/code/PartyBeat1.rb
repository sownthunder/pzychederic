########################
# SOUND EFFECTS TO USE #
########################

#sample :vinyl_backspin
##sample :vinyl_rewind
sample :vinyl_scratch
#sample :ambi_choir, decay: 14, sustain: 32
###sample :loop_weirdo

###sleep 2

live_loop :vinylLoop do
  sample :vinyl_scratch
  sleep 4
end


####################################################
## INTRO ##
###################################################


loop do
  sample :drum_cymbal_closed
  if tick.even?
    sample :bd_haus
  else
    sample :sn_dolf
  end
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
end


#sample :loop_breakbeat, beat_stretch: 8, pitch: 5, amp: 4


sleep 1
## TREBLE CLEF -- drumsticky noise during vocals
## TABLA DRUMS???
#################################################
## sustain:
## release:
################################################

#use_synth :dsaw
#use_synth :fm

with_fx :echo do
  play 47, amp: 0.5
  sleep 0.5
  sample :bd_klub
  sleep 0.5
  play 62
end

live_loop :drums do
  puts "slow drums"
  6.times do
    sample :drum_heavy_kick, rate: 0.8
    sleep 0.5
  end
  
  puts "fast drums"
  8.times do
    sample :drum_heavy_kick, rate: 0.8
    sleep 0.125
  end
end

"
##play :C
sample :sn_dub, amp: 2, pitch: 0
sleep 1

##play :A
sample :sn_dub, amp: 1, pitch: -12
sleep 1

##play :E
sample :sn_dub, amp: 1, pitch: -24
sleep 1

##play :A
sample :sn_dub, amp: 1, pitch: -12
sleep 0.5
##play :A
sample :sn_dub, amp: 1, pitch: -12
sleep 0.5
"

#############################################
sleep 1
## BASS CLEF -- THAT BASSY WOMP WOMP SHIT
###############################################
## sustain:
## release:
###############################################

# Bass Drums
##sample :bd_boom, amp: 4, sustain: 4, release: 0.4

loop do
  sample :drum_bass_hard
  if tick.even?
    #sample :elec_bong
    sample :bd_fat, amp: 0.4, sustain: 2, release: 0.2
  else
    #sample :elec_blip
    sample :bd_boom, amp: 0.8, sustain: 4, release: 0.4
  end
  sleep 0.5
  #sample :drum_cymbal_closed
  #sample :drum_cymbal_soft
  use_bpm 50
  #sample :elec_bong, beat_stretch: 2
  sample :perc_door, beat_stretch: 2
  sleep 0.5
end

#############################################
sleep 8
## Random Third noise -- experiment(Bass Sounds???)
##############################################
## sustain: must be a positive number to hold sound
## release: 0.1 so it sound like a wooshing?
###############################################

"
loop do
  sample :bass_dnb_f, sustain: 8, release: 0.1
  if tick.even?
    sample :bd_pure
  else
    sample :bd_zum
  end
  sleep 0.25
  sample :elec_filt_snare
  sleep 0.25
  sample :loop_weirdo
end
"
