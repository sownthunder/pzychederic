# Welcome to Sonic Pi v3.1

box_samples = "/Users/dbates/Box/"
soul_drumkit = "/Users/dbates/Box/DRUM_KITS/Chopped Drums vol 1/soul/"
hiphop_drums = "/Users/dbates/Box/DRUM_KITS/Chopped Drums vol 1/bonus kits/hip hop drums/"
kush_drums = "/Users/dbates/Box/DRUM_KITS/Chopped Drums vol 2/kush/"
godly_drums = "/Users/dbates/Box/DRUM_KITS/Chopped Drums vol 1/godly/"
pure_analog = ""


# Band Example 2
# Mehackit 2016

use_bpm 120

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample kush_drums, "kush - kick", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample kush_drums, "kush - snare", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample kush_drums, "kush - kick 2", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample kush_drums, "skush - snare 3", amp: 1
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample kush_drums, "kush - hi hat", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample kush_drums, "kush - hi hat fill", amp: 1
  sleep 1
end

"
live_loop :basso do
  use_synth :tb303
  play chord(:C2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  sleep 0.25
end

live_loop :melodia do
  if one_in(6)
    use_transpose 2
  else
    use_transpose 0
  end
  play_pattern_timed [:c4, :e4, :f4, :g4, :f4, :e4, :f4, :g4, :f4, :e4, :f4], [0.25, 0.25, 0.25, 1.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], attack: 0, release: 0.2
end
"