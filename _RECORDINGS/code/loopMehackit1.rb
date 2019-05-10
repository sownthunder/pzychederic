# Welcome to Sonic Pi v2.11.1

####################################################
## INTRO ##
###################################################
"
sample :loop_weirdo
sleep 2

live_loop :waitSound do
  sleep 8
  sample :loop_weirdo
end
"

live_loop :loopSoundTest do
  8.times do
    use_bpm 50
    sample :loop_mehackit1, beat_stretch: 4
    sleep 4
  end
end

"
live_loop :weirdoLoopTest do
  with_fx :krush do
    8.times do
      use_bpm 50
      sample :loop_weirdo
      sleep 2
    end
  end
end
"

## HaloRipoff1
########################

# Wob Rhyth
use_debug false

"
with_fx :reverb do
  live_loop :choral do
    r = (ring 0.5, 1.0/3, 3.0/5).choose
    cue :choir, rate: r
    8.times do
      use_bpm 100
      sample :ambi_choir, amp: 0.4, beat_stretch: 4, rate: r, pan: rrand(-1, 1)
      sleep 0.5
    end
  end
end
"

"
live_loop :wub_wub do
  with_fx :wobble, phase: 2, reps: 16 do |w|
    with_fx :echo, mix: 0.6 do
      #sample :drum_heavy_kick
      use_bpm 50
      #sample :elec_bong, beat_stretch: 2
      sample :perc_door, beat_stretch: 2
      sample :bass_hit_c, rate: 0.8, amp: 0.4
      sleep 1
      ## try changing the wobble's phase duration:
      # control w, phase: (ring 0.5, 1, 2).choose
    end
  end
end
"

sleep 4
################################################
## TREBLE
###############################################

"
live_loop :trebleCleff do
  with_fx :krush do
    8.times do
      use_bpm 50
      #sample :elec_bong, beat_stretch: 2
      #sample :perc_swoosh, amp: 0.8, beat_stretch: 2, sustain: 4
      sleep 2
      sample :perc_door, amp: 0.8, beat_stretch: 2, sustain: 4
    end
  end
end
"

sleep 9
#################################################
## BASS
#################################################

"
live loop :bassCleff do
  with_fx :krush do
    4.times do
      use_bpm 50
      sample :perc_impact1, amp: 0.8, beat_stretch: 2
      sleep 4
    end
  end
end
"