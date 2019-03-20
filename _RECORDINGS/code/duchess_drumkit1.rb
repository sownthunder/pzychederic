# Welcome to Sonic Pi v3.1

trap_drums = "/Users/dbates/Box/DRUM_KITS/No1_DUCHESS_kit"

# Band Example 2
#Mehackit 2016

use_bpm 120

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample trap_drums, "", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample trap_drums, "", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample trap_drums, "", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample trap_drums, "", amp: 1
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample trap_drums>, "", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample trap_drums, "", amp: 1
  sleep 1
end