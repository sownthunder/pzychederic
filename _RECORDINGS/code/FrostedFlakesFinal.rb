# Welcome to Sonic Pi v2.11.1

# Frosted Flakes FINAL V1 #
# 06/22/2018

# Ocean
# Coded by Sam Aaron

with_fx :reverb, mix: 0.5 do
  live_loop :oceans do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 110)
    sleep rrand(2, 4)
  end
end

############
sleep 8
############

# Coded by Adrian Cheater
# (in a single tweet)
# https://twitter.com/wpgFactoid/status/666692596605976576

live_loop :matisBeat do
  use_synth :zawa
  
  [1, 3, 6, 4].each do |d|
    range(-3, 3).each do |i|
      play_chord  chord_degree(d, :c, :major, 3, invert: i)
      sleep 0.25
    end
  end
end

###########
sleep 16
###########

# Wob Rhyth

# Coded by Sam Aaron

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
# Compus Beats

# Coded by Sam Aaron

use_sample_bpm :loop_compus, num_beats: 4


live_loop :loopr do
  sample :loop_compus, rate: [0.5, 1, 1, 1, 1, 2].choose unless one_in(10)
  sleep 4
end
"
