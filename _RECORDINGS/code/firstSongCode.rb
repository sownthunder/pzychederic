########################
# SOUND EFFECTS TO USE #
########################

#sample :vinyl_backspin
##sample :vinyl_rewind
####sample :vinyl_scratch
#sample :ambi_choir, decay: 14, sustain: 32
sample :loop_weirdo

sleep 2

####################################################
## INTRO ##
###################################################

## HaloRipoff1
########################

# Wob Rhyth
use_debug false

with_fx :reverb do
  live_loop :choral do
    r = (ring 0.5, 1.0/3, 3.0/5).choose
    cue :choir, rate: r
    8.times do
      sample :ambi_choir, rate: r, pan: rrand(-1, 1)
      sleep 0.5
    end
  end
end


live_loop :wub_wub do
  with_fx :wobble, phase: 2, reps: 16 do |w|
    with_fx :echo, mix: 0.6 do
      sample :drum_heavy_kick
      sample :bass_hit_c, rate: 0.8, amp: 0.4
      sleep 1
      ## try changing the wobble's phase duration:
      # control w, phase: (ring 0.5, 1, 2).choose
    end
  end
end

"
live_loop :safari_loop do

  #sample :bd_klub
  sample :loop_safari, beat_stretch: 8, pitch: 4, attack: 0.4, amp: 4

end


sample :loop_breakbeat, beat_stretch: 8, pitch: 5, amp: 4
"


## TREBLE CLEF -- drumsticky noise during vocals
## TABLA DRUMS???
#################################################

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

# Bass Drums
##sample :bd_boom, amp: 4, sustain: 4, release: 0.4

loop do
  sample :drum_bass_hard
  if tick.even?
    #sample :elec_bong
    sample :bd_fat, amp: 2, sustain: 2, release: 0.2
  else
    #sample :elec_blip
    sample :bd_boom, amp: 4, sustain: 4, release: 0.4
  end
  sleep 0.5
  #sample :drum_cymbal_closed
  #sample :drum_cymbal_soft
  sample :elec_bong
  sleep 0.5
end

sleep 2
## Random Third noise -- experiment
##############################################
## sustain: must be a positive number to hold sound
## release: 0.1 so it sound like a wooshing?

# Bass Sounds
sample :bass_dnb_f, sustain: 8, release: 0.1