# Welcome to Sonic Pi v3.1

club_drums = "/Users/dbates/Box/DRUM_KITS/DnB Klub Kit/"

# Band Example 2
#Mehackit 2016

use_bpm 120

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample club_drums, "chbb31", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample club_drums, "snarefxldk05", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample club_drums, "chbb46", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample club_drums, "snarefxldk10", amp: 1
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample club_drums, "hatldk41", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample club_drums, "hatldk42", amp: 1
  sleep 1
end