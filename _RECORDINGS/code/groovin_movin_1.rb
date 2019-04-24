# Welcome to Sonic Pi v3.1

# Hip Hop Beat
# Mehackit 2016

##########################################

clap_samples = "C:/Users/dbates/Box/CLAP/"

##########################################

use_bpm 100

"
live_loop :biitti do
  sample :bd_808, rate: 1, amp: 4
  sleep 1
  sample :elec_hi_snare, amp: 1
  sleep 1
  sample :bd_808, rate: 1, amp: 4
  sleep 1
  sample :elec_hi_snare, amp: 1
  sleep 1
end
"

live_loop :luuppi do
  sample :loop_breakbeat, beat_stretch: 4
  sleep 4
end

################################

live_loop :rummut do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_pedal
  sleep 1
end

live_loop :basso do
  use_synth :fm
  play :c2, attack: 0, release: 0.25, amp: 2
  sleep 0.25
  play :c2, attack: 0, release: 0.3, amp: 2
  sleep 2
  play :e2
  sleep 0.75
  play :f2
  sleep 1
end

#################################


live_loop :clappy do
  sync "/live_loop/basso"
  sleep 16
  with_fx :echo, mix: 0.6 do
    sample clap_samples, "clp_scorch.wav", amp: 4
  end
end


"
live_loop :ujellus do
  with_fx :echo, phase: 1.5, mix: 0.5 do
    use_synth :mod_beep
    use_synth_defaults mod_phase: 0.125, pulse_width: 0.8, mod_wave: 2, attack: 1
    play :G5
    sleep 8
  end
end
"

live_loop :hihat do
  16.times do
    sample :drum_cymbal_pedal, start: 0.05, finish: 0.4, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.125
  end
  4.times do
    sample :drum_cymbal_pedal, start: 0.05, finish: 0.6, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.25
  end
  16.times do
    sample :drum_cymbal_pedal, start: 0.1, finish: 0.3, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.0625
  end
end