# Welcome to Sonic Pi v3.1

# Band Example 2
#Mehackit 2016

use_bpm 120

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample <>, "", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample <>, "", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample <>, "", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample <>, "", amp: 1
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample <>, "", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample <>, "", amp: 1
  sleep 1
end