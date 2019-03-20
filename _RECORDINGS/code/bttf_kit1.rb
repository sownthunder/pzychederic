# Welcome to Sonic Pi v3.1

bttf_samples = "/Users/dbates/Box/SOUND_SAMPLES/FX/bttf/"

set_volume! 2
# Band Example 2
#Mehackit 2016

use_bpm 60

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample bttf_samples, "Bongo 1", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample bttf_samples, "Snare 1", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample bttf_samples, "Bongo 3", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample bttf_samples, "Snare 2", amp: 2
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample bttf_samples, "delorean", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample bttf_samples, "delorean2", amp: 1
  sleep 1
end

live_loop :snap do
  sleep 7
  sample bttf_samples, "greatscott3", amp: 2
  sleep 1.5
end
