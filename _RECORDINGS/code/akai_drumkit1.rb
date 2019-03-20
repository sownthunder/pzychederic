# Welcome to Sonic Pi v3.1

akai_drums = "/Users/dbates/Box/DRUM_KITS/Signature Samples Akai MPC-60/"

# Band Example 2
#Mehackit 2016

use_bpm 120

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample akai_drums, "Bassdrum", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample akai_drums, "Snare 1", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample akai_drums, "Bassdrum Gated", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample akai_drums, "Snare 3", amp: 1
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample akai_drums, "Open Hat", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample akai_drums, "Closed Hat", amp: 1
  sleep 1
end