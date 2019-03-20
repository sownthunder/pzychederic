# Welcome to Sonic Pi v3.1

empire_drums = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/"
empire_snares = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Snares/"
empire_kicks = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Kicks/"
empire_hihats = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/HiHats/"
empire_claps = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Claps/"

set_volume! 2
# Band Example 2
#Mehackit 2016

use_bpm 60

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample empire_kicks, "Kick   (17)", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample empire_snares, "Snare (60)", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample empire_kicks, "Kick  (28)", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample empire_snares, "Snare (330)", amp: 2
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample empire_hihats, "Hi Hats (1)", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample empire_hihats, "Hat 16", amp: 1
  sleep 1
end

live_loop :clap do
  sleep 7
  sample empire_claps, "Claps (4)", amp: 2
  sleep 1.5
end
